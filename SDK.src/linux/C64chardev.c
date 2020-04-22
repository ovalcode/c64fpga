/**
 * Linux driver to be used by main.c.
 * Special thanks to Derek Molloy for his tutorial for a Linux Kernel Driver for the BeagleBone:
 * https://github.com/derekmolloy/exploringBB/tree/version2/extras/kernel/ebbchar
 * 
 * Load driver with insmod c64chardev
 * Create entry into /dev with: mknod /dev/c64chardev c 244 0
 */

#include <linux/init.h>           // Macros used to mark up functions e.g. __init __exit
#include <linux/module.h>         // Core header for loading LKMs into the kernel
#include <linux/device.h>         // Header to support the kernel Driver Model
#include <linux/kernel.h>         // Contains types, macros, functions for the kernel
#include <linux/io.h>
#include <linux/types.h>
#include <linux/delay.h>

#include <linux/fs.h>             // Header for the Linux file system support
#include <linux/uaccess.h>          // Required for the copy to user function
#define  DEVICE_NAME "c64chardev"    ///< The device will appear at /dev/ebbchar using this value
#define  CLASS_NAME  "ebb"        ///< The device class -- this is a character device driver

MODULE_LICENSE("GPL");            ///< The license type -- this affects available functionality
MODULE_AUTHOR("Derek Molloy");    ///< The author -- visible when you use modinfo
MODULE_DESCRIPTION("A simple Linux char driver for the BBB");  ///< The description -- see modinfo
MODULE_VERSION("0.1");            ///< A version number to inform users

static int    majorNumber;                  ///< Stores the device number -- determined automatically
static char   message[256] = {0};           ///< Memory for the string that is passed from userspace
static unsigned char tape_data[8192];
static short  size_of_message;              ///< Used to remember the size of the string stored
static int    numberOpens = 0;              ///< Counts the number of times the device is opened
static struct class*  ebbcharClass  = NULL; ///< The device-driver class struct pointer
static struct device* ebbcharDevice = NULL; ///< The device-driver device struct pointer
static void __iomem *c64_reg;
static void __iomem *c64_reg_screen_mode;
static void __iomem *c64_reg_keyboard_0;
static void __iomem *c64_reg_keyboard_1;

static void __iomem *tape_mem_area;
static void __iomem *i2c_reg;
static void __iomem *clk_reg;

static unsigned int tape_pointer = 0;

struct keyboard 
{
           u32 word1;
           u32 word2;
           u32 joybits;
};

// The prototype functions for the character driver -- must come before the struct definition
static int     dev_open(struct inode *, struct file *);
static int     dev_release(struct inode *, struct file *);
static ssize_t dev_read(struct file *, char *, size_t, loff_t *);
static ssize_t dev_write(struct file *, const char* keys/*struct keyboard *keys*/, size_t, loff_t *);
static long c64_ioctl (struct file *filp,
                   unsigned int cmd, unsigned long arg);



/** @brief Devices are represented as file structure in the kernel. The file_operations structure from
 *  /linux/fs.h lists the callback functions that you wish to associated with your file operations
 *  using a C99 syntax structure. char devices usually implement open, read, write and release calls
 */
static struct file_operations fops =
{
   .open = dev_open,
   .read = dev_read,
   .write = dev_write,
   .unlocked_ioctl = c64_ioctl,
   .release = dev_release,
};

void writeReg(int addr, int data) {
	//master -> ACK -> CLR FIFO -> hold bus
	    u32 in2 = ioread32(/*0xE0005000*/i2c_reg) | 64 | 16;
	    in2 = in2 & ~1;
	    iowrite32(in2, /*0xE0005000*/i2c_reg);
	    //write data to register
	        iowrite32((addr << 1) | ((data & 256) ? 1 : 0), /*0xE000500c*/i2c_reg +0xc);
	        iowrite32(data & 255, /*0xE000500c*/i2c_reg+0xc);
	    //write address
	        iowrite32(26, /*0xE0005008*/i2c_reg+8);
	    // Wait for completion
	        u32 status = ioread32(/*0xe0005010*/i2c_reg+0x10) & 1;
	        do {
	        	status = ioread32(/*0xe0005010*/i2c_reg+0x10) & 1;
	        } while (!status);

	        //clear interrupts

//	        Xil_Out32(0xe0005014, 2);

	        iowrite32(1,/*0xe0005010*/i2c_reg+0x10);

	        in2 = ioread32(/*0xe0005000*/i2c_reg) & (~16);
	        iowrite32(in2,/*0xe0005000*/i2c_reg);
       return;
}

int readReg(int addr) {
	//master -> ACK -> CLR FIFO -> hold bus


	    u32 in2 = ioread32(/*0xE0005000*/i2c_reg) | 64 | 16;
	    in2 = in2 & ~1;
	    iowrite32(in2, /*0xE0005000*/i2c_reg);
	    //write data to register
	        iowrite32(addr << 1, /*0xE000500c*/i2c_reg+0xc);
	    //write address
	        iowrite32(26, /*0xE0005008*/i2c_reg+8);
	    // Wait for completion
	        u32 status = ioread32(/*0xe0005010*/i2c_reg+0x10) & 1;
	        do {
	        	status = ioread32(/*0xe0005010*/i2c_reg+0x10) & 1;
	        } while (!status);

	        //clear interrupts

//	        Xil_Out32(0xe0005014, 2);

	        iowrite32(1, /*0xe0005010*/i2c_reg+0x10);

	        //set hold bus -> read -> clear fifo
	        in2 = ioread32(/*0xe0005000*/i2c_reg) | 16 | 1 | 64;
	        iowrite32(in2, /*0xe0005000*/i2c_reg);
	        //set transfer size
	        iowrite32(2, /*0xe0005014*/i2c_reg+0x14);
	        //set address
	        iowrite32(26, /*0xe0005008*/i2c_reg+8);
	        //clear hold
	        in2 = ioread32(/*0xe0005000*/i2c_reg) & (~16);
	        iowrite32(in2, /*0xe0005000*/i2c_reg);
	        //wait for completion
	        do {
	        	status = ioread32(/*0xe0005010*/i2c_reg+0x10) & 1;
	        } while (!status);
	        iowrite32(1, /*0xe0005010*/i2c_reg+0x10);
//	        in2 = Xil_In32(0xe000500c);
	        u32 byte0 = ioread32(/*0xe000500c*/i2c_reg+0xc);
	        u32 byte1 = ioread32(/*0xe000500c*/i2c_reg+0xc);
	        return byte0 | (byte1 << 8);

}

void init_sound(void) {
    printk("In print init sound\n");
    iowrite32(0x1f, /*0xe000501c*/i2c_reg+0x1c);
    printk("After print sound\n");
//Set divider + addressing mode
    iowrite32(0x9004, /*0xE0005000*/i2c_reg);
//master -> ACK -> CLR FIFO -> hold bus
    iowrite32( 0x9004 + 2 + 8/* + 64 + 16*/, /*0xE0005000*/i2c_reg);

    /*int val = readReg(1);
    val = val & ~63;
    writeReg(1, val);
    int val2 = readReg(1);*/

    //enable power for dac + Out
    //int val = readReg(6) & (~16) & (~8) & (~128);
    int val = 0;
    printk("before first write \n");
    writeReg(15,0);
    printk("after first write \n");
    msleep(1);
    printk("before second write \n");
    writeReg(6, 16 + 32 + 64);
    printk("after second write \n");
    writeReg(2, 0b101111001);
    writeReg(3, 0b101111001);
    writeReg(4, 0);
    writeReg(5, 0);
    writeReg(7, 1);
    writeReg(8, 0);
    msleep(1);
    writeReg(9, 1);
    msleep(1);
    writeReg(6, 32);
    msleep(1);
    writeReg(4,16+6);
    //usleep (1000000);

    //writeReg(9 , 1);

    //set dacsel
//    val = readReg(4) | 16;
//    writeReg(4, val);

//    val = readReg(5) & ~8;
//    writeReg(5, val);


    //left justified 16 bits
//    val = (readReg(7) & (~12) & (~2) ) | 1;
//    writeReg(7, val);

//    val = (readReg(8) & ~(15 << 2)) | (2 << 2);
//    writeReg(8, val);

//    usleep (1000000);

//    writeReg(9 , 1);
//    writeReg(6,32 + 64);

}

/** @brief The LKM initialization function
 *  The static keyword restricts the visibility of the function to within this C file. The __init
 *  macro means that for a built-in driver (not a LKM) the function is only used at initialization
 *  time and that it can be discarded and its memory freed up after that point.
 *  @return returns 0 if successful
 */
static int __init ebbchar_init(void){
   printk(KERN_INFO "EBBChar: Initializing the EBBChar LKM\n");

   // Try to dynamically allocate a major number for the device -- more difficult but worth it
   majorNumber = register_chrdev(0, DEVICE_NAME, &fops);
   if (majorNumber<0){
      printk(KERN_ALERT "EBBChar failed to register a major number\n");
      return majorNumber;
   }
c64_reg = ioremap(0x43c00000,
				       16000);
c64_reg = c64_reg;
c64_reg_screen_mode = c64_reg + 8;
c64_reg_keyboard_0 = c64_reg;
c64_reg_keyboard_1 = c64_reg + 4;
tape_mem_area =  ioremap(0x1f500000,
				       2000000);

i2c_reg = ioremap(0xE0005000, 128);
clk_reg = ioremap(0xF8000000, 0x200); //01EC044D mrd 0xF800012C
iowrite32(0x01EC044D, clk_reg+0x12c);
msleep(2);
init_sound();
//c64_reg = c64_reg + 8;
   printk(KERN_INFO "EBBChar: registered correctly with major number %d\n", majorNumber);

   // Register the device class
   ebbcharClass = class_create(THIS_MODULE, CLASS_NAME);
   if (IS_ERR(ebbcharClass)){                // Check for error and clean up if there is
      unregister_chrdev(majorNumber, DEVICE_NAME);
      printk(KERN_ALERT "Failed to register device class\n");
      return PTR_ERR(ebbcharClass);          // Correct way to return an error on a pointer
   }
   printk(KERN_INFO "EBBChar: device class registered correctly\n");

   // Register the device driver
   ebbcharDevice = device_create(ebbcharClass, NULL, MKDEV(majorNumber, 0), NULL, DEVICE_NAME);
   if (IS_ERR(ebbcharDevice)){               // Clean up if there is an error
      class_destroy(ebbcharClass);           // Repeated code but the alternative is goto statements
      unregister_chrdev(majorNumber, DEVICE_NAME);
      printk(KERN_ALERT "Failed to create the device\n");
      return PTR_ERR(ebbcharDevice);
   }
   printk(KERN_INFO "EBBChar: device class created correctly\n"); // Made it! device was initialized
   return 0;
}

/** @brief The LKM cleanup function
 *  Similar to the initialization function, it is static. The __exit macro notifies that if this
 *  code is used for a built-in driver (not a LKM) that this function is not required.
 */
static void __exit ebbchar_exit(void){
   device_destroy(ebbcharClass, MKDEV(majorNumber, 0));     // remove the device
   class_unregister(ebbcharClass);                          // unregister the device class
   class_destroy(ebbcharClass);                             // remove the device class
   unregister_chrdev(majorNumber, DEVICE_NAME);             // unregister the major number
   printk(KERN_INFO "EBBChar: Goodbye from the LKM!\n");
}

/** @brief The device open function that is called each time the device is opened
 *  This will only increment the numberOpens counter in this case.
 *  @param inodep A pointer to an inode object (defined in linux/fs.h)
 *  @param filep A pointer to a file object (defined in linux/fs.h)
 */
static int dev_open(struct inode *inodep, struct file *filep){
   numberOpens++;
   printk(KERN_INFO "EBBChar: Device has been opened %d time(s)\n", numberOpens);
//*c64_reg = 0x200;
   //iowrite32(0x200, c64_reg_screen_mode);
   tape_pointer = 0;
   return 0;
}

/** @brief This function is called whenever device is being read from user space i.e. data is
 *  being sent from the device to the user. In this case is uses the copy_to_user() function to
 *  send the buffer string to the user and captures any errors.
 *  @param filep A pointer to a file object (defined in linux/fs.h)
 *  @param buffer The pointer to the buffer to which this function writes the data
 *  @param len The length of the b
 *  @param offset The offset if required
 */
static ssize_t dev_read(struct file *filep, char *buffer, size_t len, loff_t *offset){
   int error_count = 0;
   // copy_to_user has the format ( * to, *from, size) and returns 0 on success
   error_count = copy_to_user(buffer, message, size_of_message);

   if (error_count==0){            // if true then have success
      printk(KERN_INFO "EBBChar: Sent %d characters to the user\n", size_of_message);
      return (size_of_message=0);  // clear the position to the start and return 0
   }
   else {
      printk(KERN_INFO "EBBChar: Failed to send %d characters to the user\n", error_count);
      return -EFAULT;              // Failed -- return a bad address message (i.e. -14)
   }
}

static long c64_ioctl (struct file *filp,
                   unsigned int cmd, unsigned long arg) {
  int i;
  //printk("iiiiiii\n");
  /*if (cmd == 0) {
    tape_pointer = 0;
  }*/ 
  if (cmd == 0) {
    //printk("In method\n");
    unsigned char * user = (unsigned char *) arg;
    printk("after cast\n");
    copy_from_user(tape_data, user, 8192);
    //printk("after copy");
    //int i;
    for (i = 0; i < 8192; i++) {
      iowrite8(tape_data[i], i + tape_mem_area + tape_pointer);
    }
    tape_pointer = tape_pointer + 8192;
  } else if (cmd == 1) {
    iowrite32(0x206, c64_reg_screen_mode);
    msleep(1000);
    iowrite32(0x204, c64_reg_screen_mode);
  } else if (cmd == 3) {
    iowrite32(0x200, c64_reg_screen_mode);
  }
  return 0;
}

/** @brief This function is called whenever the device is being written to from user space i.e.
 *  data is sent to the device from the user. The data is copied to the message[] array in this
 *  LKM using the sprintf() function along with the length of the string.
 *  @param filep A pointer to a file object
 *  @param buffer The buffer to that contains the string to write to the device
 *  @param len The length of the array of data that is being passed in the const char buffer
 *  @param offset The offset if required
 */
static ssize_t dev_write(struct file *filep, const char * keys, size_t len, loff_t *offset){
   //sprintf(message, "%s(%zu letters)", buffer, len);   // appending received string with its length
   struct keyboard temp[1];
   copy_from_user(temp, keys, 12);
   iowrite32(temp[0].word1, c64_reg_keyboard_0);
   iowrite32(temp[0].word2, c64_reg_keyboard_1);
   unsigned int tempjoy = temp[0].joybits & 0x3ff;
   tempjoy = ~tempjoy & 0x3ff;
   unsigned int joy_high = (tempjoy << 1) & 0x7c0;
   unsigned int joy_low = tempjoy & 0x1f;
   joy_high = joy_high | joy_low;
   joy_high = joy_high << 4;
   //tempjoy = ~(tempjoy << 4) & 0x1f0;
   unsigned int screenread = ioread32(c64_reg_screen_mode) & 0xffff820f;
   screenread = screenread | joy_high;
   iowrite32(screenread, c64_reg_screen_mode);
   
   //sprintf(message, "%s(%zu letters)", temp, len);
   //size_of_message = strlen(message);                 // store the length of the stored message
   //printk(KERN_INFO "EBBChar: Received %zu characters from the user\n", len);
   return 12;
}

/** @brief The device release function that is called whenever the device is closed/released by
 *  the userspace program
 *  @param inodep A pointer to an inode object (defined in linux/fs.h)
 *  @param filep A pointer to a file object (defined in linux/fs.h)
 */
static int dev_release(struct inode *inodep, struct file *filep){
   printk(KERN_INFO "EBBChar: Device successfully closed\n");
   iowrite32(0x0, c64_reg_screen_mode);
   return 0;
}

/** @brief A module must use the module_init() module_exit() macros from linux/init.h, which
 *  identify the initialization function at insertion time and the cleanup function (as
 *  listed above)
 */
module_init(ebbchar_init);
module_exit(ebbchar_exit);

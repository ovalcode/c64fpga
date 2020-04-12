/**
 * Main program for switching to C64 Screen. Also provides the following:
 * - Keyboard Interaction, i.e. capturing keystrokes in Linux and passing to C64 core
 * - Loading Tape image from Linux File system into C64 core space
 * 
 * Special thanks to Derek Molloy for his tutorial for a Linux Kernel Driver for the BeagleBone:
 * https://github.com/derekmolloy/exploringBB/tree/version2/extras/kernel/ebbchar
 *
 * Also, thanks to GCat for sharing snippets of code for capturing raw keystrokes in Linux:
 * http://www.gcat.org.uk/tech/?p=70
 * 
 * Compile code with something like the following:
 * 
 * arm-linux-gnueabihf-gcc -o c64main keymap.c main.c
 *
 * NB!! This code will only run if you have compiled the C64chardev driver and made available under
 * /dev as /dev/C64chardev. Please see C64chardev.c for more information
 * 
 * Invoke resulting program with something like the following:
 *
 * ./c64main /mnt/dan_dare.tap -> Start C64 screen with Joystick #1 enabled
 * ./c64main /mnt/dan_dare.tap -> Start C64 screen with Joystick #2 enabled
 */
#include<stdio.h>
#include<stdlib.h>
#include<errno.h>
#include<fcntl.h>
#include<string.h>
#include<unistd.h>
#include<linux/types.h>
#include "linux/kd.h"
#include "termios.h"
#include "sys/ioctl.h"


#define BUFFER_LENGTH 256               ///< The buffer length (crude but fine)
static char receive[BUFFER_LENGTH];     ///< The receive buffer from the LKM

struct keystr {
           char code;
           char desc[20];
};

extern struct keystr temp[256];

struct keyboard 
{
           unsigned int word1;
           unsigned int word2;
           unsigned int joybits;
};

static struct termios tty_attr_old;
static int old_keyboard_mode;
int keys[6];
int old_keys[6];
int key_map[256][4];

int setupKeyboard()
{
    struct termios tty_attr;
    int flags;

    /* make stdin non-blocking */
    flags = fcntl(0, F_GETFL);
    flags |= O_NONBLOCK;
    fcntl(0, F_SETFL, flags);

    /* save old keyboard mode */
    if (ioctl(0, KDGKBMODE, &old_keyboard_mode) < 0) {
	return 0;
    }

    tcgetattr(0, &tty_attr_old);

    /* turn off buffering, echo and key processing */
    tty_attr = tty_attr_old;
    tty_attr.c_lflag &= ~(ICANON | ECHO | ISIG);
    tty_attr.c_iflag &= ~(ISTRIP | INLCR | ICRNL | IGNCR | IXON | IXOFF);
    tcsetattr(0, TCSANOW, &tty_attr);

    ioctl(0, KDSKBMODE, K_RAW);
    return 1;
}

void restoreKeyboard()
{
    tcsetattr(0, TCSAFLUSH, &tty_attr_old);
    ioctl(0, KDSKBMODE, old_keyboard_mode);
}

int getCodeInList(int code) {
  if (code == 0xff) {
    return -1;
  }
  code = code & 0xff;

  for (int i = 0; i < 6; i++) {
    if (keys[i] == code)
      return i;
  }
  
  return -1;
}

void doKeyUp(int scanCode) {
  for (int i = 0; i < 6; i++) {
    if (keys[i] == scanCode) {
      keys[i] = 0;
      break;
    }
  }
}

void doKeyDown(int scanCode) {
  int index = getCodeInList(scanCode);
  if (index != -1)
    return;
  for (int i = 0; i < 6; i++) {
    if (keys[i] == 0) {
      keys[i] = scanCode;
      break;
    }
  }
}

void processKey(int scanCode) {
  if ((scanCode & 0x80)) {
    //do key release
    scanCode = (scanCode & 0x100) ? ((scanCode & 0x7f) | 0x80) : (scanCode & 0x7f);
    doKeyUp(scanCode);
  } else {
    //do key down
    scanCode = (scanCode & 0x100) ? ((scanCode & 0x7f) | 0x80) : scanCode;
    doKeyDown(scanCode);
  }
}

int getKeyCode(int *code) {
  char buf[1];
  int res;
  res = read(0, &buf[0], 1);
  if (res == -1)
    return -1;
  if ((buf[0] & 0xff) != 0xe0) {
    *code = buf[0] & 0xff;
    return res;
  }
  res = read(0, &buf[0], 1);
  if (buf[0] == 1) {
    restoreKeyboard();
    exit(0);
  }
  *code = (buf[0] & 0xff) | 0x100;
  return res;
}

void readKeyboard()
{
    int res;
    int code;
    res = getKeyCode(&code);
    processKey(code);
    while (res >= 0) {
        res = getKeyCode(&code);
        processKey(code);
    }
}

int getC64ScanCode(int code) {
  int translated = 0;

  return translated;

}

void init_table() {
  for (int i = 0; i < 256; i++) {
    key_map[i][0] = -1;
    key_map[i][1] = -1;
    key_map[i][2] = -1;
    key_map[i][3] = -1;
  }
  FILE *fp;
  fp = fopen("sym.txt", "r");
  char input[80];
  int num1, num2, num3, num4;
  while (1) {
    int status = fscanf(fp,"%d", &num1);
    fscanf(fp,"%d", &num2);
    fscanf(fp,"%d", &num3);
    fscanf(fp,"%d", &num4);
    fscanf(fp,"%[^\n]",input);
    if (status == EOF)
      break;
    if (num2 == -3) {
      key_map[num1][0] = num3 + 64;
      key_map[num1][1] = 0;
    } else if (num4 == 8) {
      key_map[num1][0] = (num2 << 3) | num3;
      key_map[num1][1] = 0;
      key_map[num1][2] = (num2 << 3) | num3;
      key_map[num1][3] = 1;
    } else if (num4 == 1) {
      key_map[num1][0] = (num2 << 3) | num3;
      key_map[num1][1] = 1;
    } else if (num4 & 32) {
      key_map[num1][0] = (num2 << 3) | num3;
      key_map[num1][1] = num4 & 1;
      fscanf(fp,"%d",&num1);
      fscanf(fp,"%d",&num2);
      fscanf(fp,"%d",&num3);
      fscanf(fp,"%d",&num4);
      fscanf(fp,"%[^\n]",input);
      key_map[num1][2] = (num2 << 3) | num3;
      key_map[num1][3] = num4 & 1;
    }
  }
  printf("finished\n");  
}

int main(int argc, char *argv[]){
   int ret, fd;
   FILE *tapefile;
   int i;
   char stringToSend[BUFFER_LENGTH];
   printf("Starting device test code example...\n");
   printf("ww %c\n",temp[252].code);

   usleep(20000);
   init_table();
   fd = open("/dev/c64chardev", O_RDWR);             // Open the device with read/write access
   if (fd < 0){
      perror("Failed to open the device...");
      //return errno;
   }

   unsigned char data[8192];
   printf("before loop\n");
   tapefile = fopen(argv[1],"r");
   int num_read;
   do {
     num_read = fread(data, 1, 8192, tapefile);
     ioctl(fd,0,&data);
   } while (num_read == 8192);

   ioctl(fd,1);

   printf("after loop\n");

   printf("sssss\n");

  setupKeyboard();
  struct keyboard keyToProcess;

  while(1) {
    usleep(20000);
    readKeyboard();
    keyToProcess.word1 = 0;
    keyToProcess.word2 = 0;
    keyToProcess.joybits = 0;

    int shifted = 0;
    char keys_to_process[4];
    int num_keys_to_process=0;
    int esc_down = 0;
    int cntrl_down = 0;
    for (int i = 0; i < 6; i++) {
      if (keys[i] == 0)
        continue;
      if (keys[i] == 1)
        esc_down = 1;
      if (keys[i] == 29)
        cntrl_down = 1;
      if (esc_down == 1 && cntrl_down == 1) {
        restoreKeyboard();
        exit(0);
      }
      char ps_2_code = temp[keys[i]].code;
      if ((ps_2_code == 'C') || (ps_2_code == 'B')) {
        shifted = 1;
        continue;
      }
      keys_to_process[num_keys_to_process] = ps_2_code;
      num_keys_to_process++;
    }

    keyToProcess.word1 = 0;
    keyToProcess.word2 = 0;

    for (int i = 0; i < num_keys_to_process; i++) {
      int offset = shifted << 1;
      if (keys_to_process[i] == 0x18) {
        ioctl(fd,3);
        continue;
      }
      int c64_scan_code = key_map[keys_to_process[i] & 0xff][offset];
      if (c64_scan_code == -1)
        continue;
      if (c64_scan_code > 63) {
        if (argc == 3)
          c64_scan_code = c64_scan_code + 5;
        keyToProcess.joybits = keyToProcess.joybits | (1 << (c64_scan_code - 64));
      } else if (c64_scan_code < 32) {
        keyToProcess.word1 = keyToProcess.word1 | (1 << c64_scan_code);
      } else {
        c64_scan_code = c64_scan_code - 32;        
        keyToProcess.word2 = keyToProcess.word2 | (1 << c64_scan_code);
      }
      if (key_map[keys_to_process[i] & 0xff][offset+1]) {
        keyToProcess.word1 = keyToProcess.word1 | (1<<15);
      }
    }

    for (int i = 0; i < 6; i++) {
      if ((keys[i] != old_keys[i]) && (keys[i] != 0)) {
      }
      old_keys[i] = keys[i];
    }
    ret = write(fd, &keyToProcess, 8); // Send the string to the LKM

  }
   return 0;
}


#include <stdio.h>
#include "xil_exception.h"
#include "xparameters.h"
#include "platform.h"
#include "xil_printf.h"
#include "xil_cache.h"
#include "xil_io.h"
#include "xscugic.h"
#include "xgpiops.h"
#include <unistd.h>

int help;
int myhelp;
XScuGic_Config *IntcConfig;
XScuGic INTCInst;

int status;
int currentTD = 0;

struct QStruct {
  u32 word0;
  u32 word1;
  u32 word2;
  u32 word3;
  u32 word4;
  u32 word5;
  u32 word6;
  u32 word7;
};

void state_machine();

void scheduleTimer(int usec) {
 //set timer value
 Xil_Out32(0xE0002080, usec);
 //reload timer
 Xil_Out32(0xE0002084, 0x40000000);
 Xil_Out32(0xE0002084, 0x80000000);
}

u32 calNextPointer(u32 currentpointer) {
 currentpointer = currentpointer - 0x300040;
 currentpointer = currentpointer + 0x20;
 if (currentpointer > 0x200)
  currentpointer = 0;
 return currentpointer + (u32)0x300040;
}

void set_port_reset_state(int do_reset) {
  u32 in2;
  if (do_reset) {
 in2 = Xil_In32(0xE0002184) | 256;
 Xil_Out32(0xE0002184, in2);
  } else {
 in2 = Xil_In32(0xE0002184) & (~256);
 Xil_Out32(0xE0002184, in2);
  }

}

void schedTransfer(int setup, int direction, int size, u32 qh_add) {
   struct QStruct *qh;
   qh = qh_add;
   u32 first_qtd = qh->word4;
   struct QStruct *firstTD;
   struct QStruct *nextTD;
   firstTD = first_qtd;
   nextTD = first_qtd;
   if (setup) {
     firstTD->word0 = calNextPointer(first_qtd); //next qtd + terminate
     firstTD->word1 = 1; // alternate pointer
     firstTD->word2 = 0x00080240; //with setup keep haleted/non active till everything setup
     firstTD->word3 = 0x301000; //buffer for setup command

    }
    if (size > 0) {
       if (setup)
         nextTD = calNextPointer(first_qtd);

       nextTD->word0 = calNextPointer(nextTD); //next qtd + terminate
       nextTD->word1 = 1; // alternate pointer

       nextTD->word2 = (size << 16) | (direction << 8) | (nextTD == firstTD ? 0x40 : 0x80) | 0x80000000;


       if (direction == 0)
   nextTD->word2 = nextTD->word2 | 0x8000;
       nextTD->word3 = setup ? 0x302000 : 0x301000; //buffer for setup command

       nextTD = calNextPointer(nextTD);

       if (direction == 1) {
   nextTD->word0 = calNextPointer(nextTD); //next qtd + terminate
   nextTD->word1 = 1; // alternate pointer
   nextTD->word2 = 0x80008080; //with setup keep haleted/non active till everything setup
   nextTD->word3 = 0x301000; //buffer for setup command
       }
    } else {
     //size = 0
     nextTD = calNextPointer(first_qtd);
        nextTD->word0 = calNextPointer(nextTD); //next qtd + terminate
        nextTD->word1 = 1; // alternate pointer
        nextTD->word2 = (0 << 16) | (1 << 8) | (nextTD == firstTD ? 0x40 : 0x80) | 0x80000000 | 0x8000;

    }
    if (nextTD == firstTD)
     nextTD->word2 = nextTD->word2 | 0x8000;
 nextTD = calNextPointer(nextTD);
 nextTD->word0 = 1; //next qtd + terminate
 nextTD->word1 = 1; // alternate pointer
 nextTD->word2 = 0x40; //with setup keep haleted/non active till everything setup
 nextTD->word3 = 0x301000; //buffer for setup command
firstTD->word2 = (firstTD->word2 & (~0x40)) | 0x80;
}

void initUsb() {
 Xil_Out32(0xE00021A8, 3);//set to host mode
 u32 in2 = Xil_In32(0xE0002184) | 4096;
 Xil_Out32(0xE0002184, in2); //switch port power on
 usleep(1000000);

 for (int i = 0; i < 1000000; i = i + 4) {
  u32 current = 0x300000 + i;
  u32 *currentword;
  currentword = current;
  *currentword = 0;
 }

 struct QStruct *qh;
 qh = 0x300000;
 qh->word0 = 0x300002;
 qh->word1 = 0xf808d000; //enable H bit -> head of reclamation
 qh->word2 = 0x40000000;
 qh->word3 = 0;
 qh->word4 = 0x300040;// pointer to halt qtd
 qh->word5 = 1;// no alternate

struct QStruct *qTD;
 qTD = 0x300040;
 qTD->word0 = 1; //next qtd + terminate
 qTD->word1 = 0; // alternate pointer
 qTD->word2 = 0x40; //halt value// setup packet 80 to activate

 Xil_Out32(0xE0002158,0x300000); // set async base
 in2 = Xil_In32(0xE0002140) | 0x1;
 Xil_Out32(0xE0002140,in2); //enable rs bit

 in2 = Xil_In32(0xE0002140) | 0x20;
 Xil_Out32(0xE0002140,in2); // enable async processing

}

void initint() {

 IntcConfig = XScuGic_LookupConfig(0);
 int status;
 myhelp = 1;

 status = XScuGic_CfgInitialize(&INTCInst, IntcConfig, IntcConfig->CpuBaseAddress);
 Xil_ExceptionRegisterHandler(XIL_EXCEPTION_ID_INT,
         (Xil_ExceptionHandler)XScuGic_InterruptHandler,
      &INTCInst);
 Xil_ExceptionEnable();
 status = XScuGic_Connect(&INTCInst,
         53,
         (Xil_ExceptionHandler)state_machine,
         (void *)myhelp);
 XScuGic_Enable(&INTCInst, 53);
 u32 in2 = Xil_In32(0xE0002148) | (1<<24) | (1<<18);
 Xil_Out32(0xE0002148, in2); //enable
}

void setup_periodic() {
  u32 in2 = Xil_In32(0xE0002140) | (1<<15) | 8;
  Xil_Out32(0xE0002140, in2);

 Xil_Out32(0x304000, 1);
 Xil_Out32(0x304004, 1);
 Xil_Out32(0x304008, 1);
 Xil_Out32(0x30400c, 1);
 Xil_Out32(0x304010, 1);
 Xil_Out32(0x304014, 1);
 Xil_Out32(0x304018, 1);
 Xil_Out32(0x30401c, 1);
 Xil_Out32(0x304020, 1);
 Xil_Out32(0x304024, 1);
 Xil_Out32(0x304028, 1);
 Xil_Out32(0x30402c, 1);
 Xil_Out32(0x304030, 1);
 Xil_Out32(0x304034, 1);
 Xil_Out32(0x304038, 1);
 Xil_Out32(0x30403c, 1);

 Xil_Out32(0xE0002154, 0x304000);
 struct QStruct *qh;
 qh = 0x304040;
 qh->word0 = 0x304082;
 qh->word1 = 0;
 qh->word2 = 0;
 qh->word3 = 0;
 qh->word4 = 1;
 qh->word5 = 1;

 qh = 0x304080;
 qh->word0 = 1;
 qh->word1 = 0x00085103;
 qh->word2 = 0x40000001;
 qh->word3 = 0;
 qh->word4 = 0x304100;
 qh->word5 = 1;

 struct QStruct *qTD;
 qTD = 0x304100;
 qTD->word0 = 1;
 qTD->word1 = 1;
 qTD->word2 = 0x00080180;
 qTD->word3 = 0x305000;

 //set first frame to qh
 Xil_Out32(0x304000, 0x304042);
}

void state_machine() {
   u32 in2 = Xil_In32(0xE0002144) | (1<<24) | (1<<18);
   Xil_Out32(0xE0002144, in2); //clear

   if (status == 0) {
    set_port_reset_state(1);
    scheduleTimer(12000);
    status = 1;
    return;
   } else if (status == 1) {
    set_port_reset_state(0);
    status = 2;
    scheduleTimer(1500);
    return;
   } else if (status == 2) {
    //set address
    Xil_Out32(0x301000, 0x00030500);
    Xil_Out32(0x301004, 0x00000000);
    schedTransfer(1,0,0x0, 0x300000);
    status = 3;
    return;
   } else if (status == 3) {
  scheduleTimer(3000);
  status = 4;

  return;

 } else if (status == 4) {
  in2 = Xil_In32(0x300004) | 3;
  Xil_Out32(0x300004, in2);

  //set configuration
  Xil_Out32(0x301000, 0x00010900);
  Xil_Out32(0x301004, 0x00000000);
  schedTransfer(1,0, 0, 0x300000);
  status = 5;
        return;
 } else if (status == 5) {
  //enable periodic scheduling
  setup_periodic();
  in2 = Xil_In32(0xE0002140) | 16;
  Xil_Out32(0xE0002140, in2);
  status = 6;
  scheduleTimer(10000);
  return;
 } else if (status == 6) {
  u32 qTDAddress = currentTD ? 0x304100 : 0x304120;
  u32 qTDAddressCheck = currentTD ? 0x304120 : 0x304100;

  u32 toggle = Xil_In32(qTDAddressCheck+8) & 0x80000000;
  if (!(Xil_In32(qTDAddressCheck + 8) & 0x80)) {
   u32 word0 = Xil_In32(0x305000);
   u32 word1 = Xil_In32(0x305004);
   printf("%x %x\n",word0, word1);
   struct QStruct *qh;
   qh = 0x304040;
   qh->word0 = 1;

   struct QStruct *qh2;
   qh2 = currentTD ? 0x304080 : 0x3040c0;

   qh2->word0 = 1;
   qh2->word1 = 0x00085103;
   qh2->word2 = 0x40000001;
   qh2->word3 = 0;
   qh2->word4 = qTDAddress;
   qh2->word5 = 1;

   struct QStruct *qTD;
   qTD = qTDAddress;
   qTD->word0 = 1;
   qTD->word1 = 1;
   qTD->word2 = 0x00080180 | toggle; //halt value// setup packet 80 to activate
   qTD->word3 = 0x305000;
            u32 temp = qh2;
            temp = temp | 2;
   qh->word0 = temp;

   currentTD = ~currentTD;
  }
  scheduleTimer(10000);
  return;
 }


}
int main()
{
    Xil_DCacheDisable();
    init_platform();
    initint();
    initUsb();
    status = 0;
    state_machine();
    usleep(100000000);
    cleanup_platform();
    return 0;
}

#include "SPI.h"
#include "LedControl.h"
LedControl lc = LedControl(11, 13, 10, 1);
unsigned long delaytime = 500; 

const int tinyfont_count = 42;
unsigned const int PROGMEM mytinyfont[10][3] = {
  {0x1F, 0x11, 0x1F}  //0 - 9
  ,{0x00, 0x00, 0x1F}
  ,{0x17, 0x15, 0x1D}
  ,{0x11, 0x15, 0x1F}
  ,{0x1C, 0x4,  0x1F}
  ,{0x1D, 0x15, 0x17}
  ,{0x1F, 0x15, 0x17}
  ,{0x10, 0x10, 0x1F}
  ,{0x1F, 0x15, 0x1F}
  ,{0x1D, 0x15, 0x1F}
};


void setup() {
  int devices = lc.getDeviceCount(); // find no of LED modules
  //we have to init all devices in a loop
  for (int address = 0; address < devices; address++) { // set up each device
    lc.shutdown(address, true);
    lc.setIntensity(address, 8);
    lc.clearDisplay(address);
  }
}

void loop() {
  int devices = lc.getDeviceCount(); 
  for(int i=0; i<8; ++i) {
    lc.setLed(0,0,i,false);
    delay(delaytime);
    lc.setLed(0,0,i,true);
    delay(delaytime);
  }
}

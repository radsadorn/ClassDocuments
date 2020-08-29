#include <LedControl.h>

#include "LedControl.h"
LedControl lc = LedControl(11, 13, 10, 4); // CLK,DIN,CS,Number of LED Module
unsigned long delaytime = 500; // time to updates of the display

void setup() {
  int devices = lc.getDeviceCount(); // find no of LED modules
  //we have to init all devices in a loop
  pinMode(10, INPUT);
  pinMode(11, INPUT);
  pinMode(13, INPUT);
  for (int address = 0; address < devices; address++) { // set up each device
    lc.shutdown(address, false);
    lc.setIntensity(address, 8);
    lc.clearDisplay(address);
  }
}
void loop() {
  int devices = lc.getDeviceCount(); // find no of LED modules
  for (int row = 0; row < 8; row++) {
    for (int col = 0; col < 8; col++) {
      for (int address = 0; address < devices; address++) {
        delay(delaytime);
        lc.setLed(address, row, col, true);
        delay(delaytime);
        lc.setLed(address, row, col, false);
      }
    }
  }
}

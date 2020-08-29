#include <LedControl.h>
#include <SoftwareSerial.h>
#include "FontLEDClock.h" // Font library
SoftwareSerial mySerial(8, 9);

LedControl lc = LedControl(11, 13, 10, 4); // DIN,CLK,CS,Number of LED Module
uint8_t intensity = 1;

unsigned long delaytime = 50; // time to updates of the display

void setup() {
  int devices = lc.getDeviceCount(); // find no of LED modules
  randomSeed(1000);

  Serial.begin(4800);
  Serial.println("Hello World");
  mySerial.begin(4800);

  //we have to init all devices in a loop
  for (int address = 0; address < devices; address++) { // set up each device
    lc.shutdown(address, false);
    lc.setIntensity(address, 8);
    lc.clearDisplay(address);
  }
}

//plot a point on the display
void plot (uint8_t x, uint8_t y, uint8_t value) {

  //select which matrix depending on the x coord
  uint8_t address;
  if (x >= 0 && x <= 7)   {
    address = 3;
  }
  if (x >= 8 && x <= 15)  {
    address = 2;
    x = x - 8;
  }
  if (x >= 16 && x <= 23) {
    address = 1;
    x = x - 16;
  }
  if (x >= 24 && x <= 31) {
    address = 0;
    x = x - 24;
  }

  if (value == 1) {
    lc.setLed(address, y, x, true);
  } else {
    lc.setLed(address, y, x, false);
  }
}

//clear screen
void clear_display() {
  for (uint8_t address = 0; address < 4; address++) {
    lc.clearDisplay(address);
  }
}

void print_tiny_char(uint8_t x, uint8_t y, char c)
{
  uint8_t dots;
  if (c >= '0' && c <= '9') { c = (c - '0') + 34; }
  else if (c == '-') { c = 33; }
  else if (c == 'z') { c = 32; }
  
  for (uint8_t col = 0; col < 3; col++) {
    dots = pgm_read_byte_near(&mytinyfont[c][col]);
    for (uint8_t row = 0; row < 5; row++) {
      if (dots & (16 >> row))
        plot(x + col, y + row, 1);
      else
        plot(x + col, y + row, 0);
    }
  }
}

void loop()
{
  String data = "";

  //receiver
  while (mySerial.available())
  {
    data += (char)mySerial.read();
    Serial.println(data);
  }
  //endreceiver

  
  print_tiny_char(26, 2, 'z');
  //int data = random(-90, 90);
  
  uint8_t k = 0;
  while(data[k]) {
    ++k;
  }
  uint8_t i = 2;
  
  while(data[k-1]) {
    print_tiny_char((i * 8) + 2, 2, data[k-1]);
    delay(35);
    i--;
    k--;
  }

  delay(800);
  clear_display();
}

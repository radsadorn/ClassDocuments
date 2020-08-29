#include <SoftwareSerial.h>
String inputString = ""; // a string to hold incoming data
SoftwareSerial mySerial(10, 11); // SoftwareSerial(rxPin, txPin)

void setup()
{
  // Open serial communications and wait for port to open:
  Serial.begin(4800);
  Serial.println("Hello World");
  // set the data rate for the SoftwareSerialport
  mySerial.begin(4800); // recommentlow speed
  mySerial.println("Software Serial->Hello, world?");
  // attachInterrupt(interrupt, ISR, mode) interrupt-> 1(pin3)
  //attachInterrupt(1, SoftwareSerialEvent, FALLING);
}

void loop() // run over and over
{
  serialEvent();
}

void serialEvent()
{
    Serial.println(auto(mySerial.read()));
}

void SoftwareSerialEvent()
{
    Serial.print((char)mySerial.read());
}

#include <SoftwareSerial.h>

SoftwareSerial qiral(10, 11);

void setup() {
  Serial.begin(115200);
  qiral.begin(57600);
}

void flushRx() {
  while(qiral.available())
    uint8_t tmp = qiral.read();
}

void loop() {
  char myString [] = "Computer Engineering";
//  for (int i = 0; myString[i] != '\0'; ++i) {
//    qiral.write(myString[i]);
//    delay(10);
//    flushRx();
//  }
//  delay(500);
//  qiral.write('\n');

  if(Serial.available())//sending message
  {
    String buff = Serial.readString();
    Serial.print("Me: ");
    Serial.println(buff);
    mySerial.write(userId);
    for(int i=0;i<buff.length();i++)
      mySerial.write(buff[i]);
    mySerial.write('\0');
  }
  
}

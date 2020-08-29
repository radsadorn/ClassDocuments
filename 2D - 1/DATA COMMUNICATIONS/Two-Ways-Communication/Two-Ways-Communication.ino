#include<SoftwareSerial.h>
SoftwareSerial mySerial(10,11);
const char userId = 'B';
void setup() 
{
  Serial.begin(9600);
  mySerial.begin(57600);
  delay(50);
}

void loop() 
{
  delay(50);
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

  if(mySerial.available())//receiving message
  {
    String buff = mySerial.readString();
    Serial.print(buff[0]);
    Serial.print(": ");
    for(int i = 1; i < buff.length(); ++i)
      Serial.print(buff[i]);
    Serial.println();
  }
}

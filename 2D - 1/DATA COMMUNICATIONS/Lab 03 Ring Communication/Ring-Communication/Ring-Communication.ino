#include <SoftwareSerial.h>

SoftwareSerial radsadorn(10, 11); //RX TX
char myID;

void setup() {
  radsadorn.begin(57600);
  Serial.begin(9600);

  Serial.println("Enter ID:");  
  while (!(Serial.available() > 0));

  myID = char(Serial.read());
  Serial.print("Your ID: ");
  Serial.println(myID);
  delay(200);
}

void loop() {
  delay(100);
  if(Serial.available()){
    String toSend = "", data = "";
    
    while (Serial.available())
       data += char(Serial.read());

    toSend += char(data[0]);
    toSend += char(myID);
    for(int i=1;i<data.length();i++)
        toSend += char(data[i]);
 
    Serial.print("Me: ");
    for (int i = 2; i < data.length(); i++)
     Serial.print(data[i]); 
     
    Serial.println();
     for(int i = 0; i < toSend.length(); i++)
        radsadorn.write(toSend[i]);
  }
    
  if (radsadorn.available()){
    String data = radsadorn.readString();
    if(myID == data[0]){
        Serial.print(data[1]);
        for (int i = 2; i < data.length(); i++)
            Serial.print(data[i]);
        Serial.println();
   }
   else
     for(int i = 0; i < data.length(); i++)
        radsadorn.write(data[i]);
  }
}

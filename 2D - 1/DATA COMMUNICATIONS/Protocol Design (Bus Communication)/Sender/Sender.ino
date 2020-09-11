#include <SoftwareSerial.h>
SoftwareSerial qiral(10, 11);
char myID, reciver;
String text_data;
int count_frame = 0;
void setup() {
  Serial.begin(115200);
  qiral.begin(57600);
  delay(500);
  Serial.println("Enter ID : ");
  Serial.print("My ID is : ");
  while (!Serial.available());
  myID = char(Serial.read());
  Serial.println(myID);
  delay(50);
  while (Serial.available())
    uint8_t temp = Serial.read();
  Serial.print("\nReciver is : ");
  while (!Serial.available());
  reciver = char(Serial.read());
  Serial.println(reciver);
  delay(50);
  while (Serial.available())
    uint8_t temp = Serial.read();

  
  Serial.print("\nSend Text : ");
  while (!Serial.available());
  text_data = Serial.readStringUntil('\n');
  Serial.println(text_data);
}

void flushRx() {
  while (qiral.available())
    uint8_t temp = qiral.read();
}

void receive()
{
  //can't handle buffer overflowing
  //find way to reset ackNo
  while (qiral.available()) {
    String incomingText = qiral.readString();
    Serial.print("Receiving incoming frame : ");
    Serial.println(incomingText);
    char receiver = incomingText[1], sender = incomingText[2], frame_number = incomingText[3], check = incomingText[8];//extract data

    if (receiver == ownerName)//this frame is for me
    {
      Serial.print("Receive frame\nHeader : ");
      Serial.print(sender);
      Serial.println(receiver);
      Serial.print("Frame No. : ");
      Serial.println(frame_number);
      String data = "";
      for (int i = 4; i <= 7; i++)
      {
        if (char(incomingText[i]) != '~')
          data += char(incomingText[i]);
      }
      Serial.println("Data : " + data);
      Serial.print("Checking : ");
      Serial.println(check);

      //Do error detection (parity check) here: if error, do something else
      int bitChecker = 0;
      for (int i = 1; i <= 7; i++)
      {
        for (int j = 0; j < 8; j++)
        {
          bitChecker += bitRead(incomingText[i], j);
        }
      }
      if ((bitChecker % 2 == 0 && check == '1') || (bitChecker % 2 == 1 && check == '0'))
      {
        Serial.println("Received");
        Serial.print("All data : ");
        allReceiving += data;
        Serial.println(allReceiving);

        Serial.print("\nSend ACK");
        Serial.println(ackNo);
        String responseAck = "`";
        responseAck += receiver;
        responseAck += sender;
        responseAck += ackNo;

        char resCheck = '0';
        int sum = 0;
        for (int i = 0; i < responseAck.length(); i++)
        {
          for (int j = 0; j < 8; j++)
          {
            int x = bitRead(responseAck[i], j);
            if (x == 1)
            {
              sum++;
            }
          }
        }
        if (sum % 2 == 0) {
          resCheck = '1';
        }

        responseAck += resCheck;

        //send ack
        for (int i = 0; i < responseAck.length(); i++)
        {
          qiral.write(responseAck[i]);
        }
        ackNo == '0' ? ackNo = '1' : ackNo = '0';
        responseAck += "`";
      }
      else
      {
        Serial.println("Corrupted frame");
      }


    }
    else
    {
      Serial.println("Not for me!");
      Serial.println(incomingText);
      String out = "`";
      out += ownerName;
      out += sender;
      out += ackNo;
      char resCheck = '0';
      int sum = 0;
      for (int i = 0; i < out.length(); i++)
      {
        for (int j = 0; j < 8; j++)
        {
          int x = bitRead(out[i], j);
          if (x == 1)
          {
            sum++;
          }
        }
      }
      if (sum % 2 == 0) {
        resCheck = '1';
      }
      out += resCheck;
      out += "`";
      Serial.println(out);
    }

    flushRx();
  }
}

void loop() {
  if (text_data.length() > 0) {
    String toSend = "";
    String data = text_data.substring(0, 4);
    toSend += '`';
    toSend += reciver;
    toSend += myID;
    toSend += count_frame;
    if(data.length() < 4){
      for(int i = data.length(); i<4; i++){
        data += '~';
      }
    }
    toSend += data;
    int sum = 0;
    for (int i = 0; i < toSend.length(); i++) {
      for (int k = 0; k < 8; k++) {
        if (bitRead(toSend[i], k) == 1) {
          sum++;
        }
      }
    }
    (sum % 2 == 0) ? toSend += '1' : toSend += '0';
    toSend += '`';
    Serial.print("Send frame : ");
    Serial.println(count_frame);
    Serial.print("Data       : ");
    Serial.println(data);
    Serial.println();
    long current = millis();
    while(!qiral.available()){
      if (millis() - current >= 3000){
         Serial.println("Timeout");
         Serial.print("Retransmit frame ");
         Serial.println(count_frame);
         Serial.print("Send frame : ");
         Serial.println(count_frame);
         Serial.print("Data       : ");
         for(int i = 0; i<toSend.length(); i++){
          qiral.write(toSend[i]);
          flushRx();
         }
        Serial.println(data);
        Serial.println();
        current = millis();
      }
    }
    String receiveText = qiral.readStringUntil('\n');
    Serial.println("Receive frame");
    Serial.print("Header    : ");
    Serial.println(receiveText.substring(1,3));
    Serial.print("ACK No.   : ");
    Serial.println(receiveText[3]);
    count_frame = receiveText[3] - '0';
    Serial.print("Checking  : ");
    Serial.println(receiveText[receiveText.length() - 1]);
    Serial.println("Received\n");
    text_data = text_data.substring(4);
  }else{
    Serial.print("\nSend Text : ");
    while (!Serial.available());
    text_data = Serial.readStringUntil('\n');
    Serial.println(text_data);
  }
}

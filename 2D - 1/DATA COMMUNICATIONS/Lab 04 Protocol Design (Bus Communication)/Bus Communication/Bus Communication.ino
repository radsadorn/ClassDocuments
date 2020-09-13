#include <SoftwareSerial.h>

SoftwareSerial mySerial(10, 11);

char ownerName;
char ackNo = '0';
String allReceiving = "";

void setup()
{
  mySerial.begin(57600);
  Serial.begin(115200);
  delay(200);
  Serial.println("Enter ID :");
  while (!Serial.available())
  {
  }
  ownerName = Serial.read();
  /*for(int i=7;i>=0;i--){
    Serial.println(bitRead(ownerName,i));  //test bit reading each character
    delay(100);
    }*/
  Serial.print("My ID is : ");
  Serial.println(ownerName);
  /*Serial.println(ownerName);
    while (!Serial.available())
    {
    }
    Serial.println("Sender Send : " + Serial.readString());
    while (!Serial.available())
    {
    }
    Serial.println("Save as : " + Serial.readString());
  */
}

void flushRx()
{
  while (mySerial.available())
  {
    String tmp = mySerial.readString();
  }
}


void receiving()
{
  //can't handle buffer overflowing
  //find way to reset ackNo
  while (mySerial.available()) {
    String incomingText = mySerial.readString();
    Serial.print("Receiving incoming frame : ");
    Serial.println(incomingText);
    char receiver = incomingText[1], sender = incomingText[2], frame_number = incomingText[3], check = incomingText[8];//extract data

    if (receiver == ownerName)//this frame is for me
    {
      if (frame_number == ackNo)
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

          ackNo == '0' ? ackNo = '1' : ackNo = '0';
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
            mySerial.write(responseAck[i]);
          }
          //ackNo == '0' ? ackNo = '1' : ackNo = '0';
          responseAck += "`";
        }
        else
        {
          Serial.println("Corrupted frame");
        }
      }
      else
      {
        Serial.println("Discarding old frame");
        Serial.print("\nRe-send ACK");
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
          mySerial.write(responseAck[i]);
        }
        responseAck += "`";
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
      if (sum % 2 == 0)
      {
        resCheck = '1';
      }
      out += resCheck;
      out += "`";
      Serial.println(out);
    }

    flushRx();
  }
}

void trasmitting()
{
  int count_frame = 0;
  char reciver;
  String text_data = "";
  int wasSend = 0;
  if (Serial.available())
  {
    ackNo = '0';
    allReceiving = "";
    reciver = char(Serial.read());
    Serial.print("Reciver is : ");
    Serial.println(reciver);
    while (Serial.available())//flush Serial
      uint8_t temp = Serial.read();
    while (!Serial.available()) {}
    Serial.print("\nSend Text : ");
    while (!Serial.available());
    text_data = Serial.readStringUntil('\n');
    Serial.println(text_data);
  }

  while (text_data.length() > 0)
  {
    if (text_data.length() > 0)
    {
      String toSend = "";
      String data = text_data.substring(0, 4);
      toSend += '`';
      toSend += reciver;
      toSend += ownerName;
      toSend += count_frame;
      if (data.length() < 4) {
        for (int i = data.length(); i < 4; i++) {
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
      while (!mySerial.available())
      {
        if (millis() - current >= 3000)
        {
          Serial.println("Timeout");
          Serial.print("Retransmit frame ");
          Serial.println(count_frame);
          Serial.print("Send frame : ");
          Serial.println(count_frame);
          Serial.print("Data       : ");
          for (int i = 0; i < toSend.length(); i++) {
            mySerial.write(toSend[i]);
            flushRx();
          }
          Serial.println(data);
          Serial.println();
          current = millis();
        }
      }
      String receiveText = mySerial.readStringUntil('\n');
      Serial.println("Receive frame");
      Serial.print("Header    : ");
      Serial.println(receiveText.substring(1, 3));
      Serial.print("ACK No.   : ");
      Serial.println(receiveText[3]);
      count_frame = receiveText[3] - '0';
      Serial.print("Checking  : ");
      Serial.println(receiveText[receiveText.length() - 1]);
      Serial.println("Received\n");
      text_data = text_data.substring(4);
    }
    else
    {
      Serial.print("\nSend Text : ");
      while (!Serial.available());
      text_data = Serial.readStringUntil('\n');
      Serial.println(text_data);
    }
    wasSend = 1;
  }
  if (wasSend == 1) {
    Serial.println("---END OF TRANSMISSION---");
    wasSend = 0;
  }

}

void loop()
{
  receiving();
  trasmitting();
}

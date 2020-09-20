#define Button1 12
#define Button2 11
#define Button3 9
#define LED1RED 4
#define LED2YELLOW 3
#define LED3GREEN 2
#define pressed LOW//เหมือนไม่ได้กด
#define unpressed HIGH//เหมือนกดค้าง
unsigned long tc1=0;
unsigned long tc3=0;
unsigned long t1=0;
unsigned long t3=0;

void setup(){
  Serial.begin(9600);
  pinMode(Button1,INPUT);
    pinMode(Button2,INPUT);
      pinMode(Button3,INPUT_PULLUP);
  pinMode(LED1RED,OUTPUT);
    pinMode(LED2YELLOW,OUTPUT);
      pinMode(LED3GREEN,OUTPUT);
}

void loop(){
  int readSwitch1=digitalRead(Button1);
  int readSwitch2=digitalRead(Button2);
  int readSwitch3=digitalRead(Button3);


  if(readSwitch1 == unpressed && millis()- tc1 > 1000 && digitalRead(LED1RED) == LOW && digitalRead(LED3GREEN) == LOW){
    tc1 = millis();
    Serial.println("Pressed Switch1.");
    digitalWrite(LED1RED,HIGH);
    t1 = millis();
    }
  else if( millis()- t1 > 3000 || (readSwitch1 == unpressed && millis() - t1 > 500 && digitalRead(LED1RED) == HIGH)){
    digitalWrite(LED1RED,LOW);
    tc1 = millis();
    t1 = millis();
     }


  if(readSwitch3 == pressed && millis()- tc3 > 1000 && digitalRead(LED1RED) == LOW){
    tc3 = millis();
    Serial.println("Pressed Switch3.");
    digitalWrite(LED3GREEN,HIGH);
    t3 = millis();
    }
  else if( millis()- t3 > 3000 || (readSwitch3 == pressed && millis() - t3 > 500 && digitalRead(LED3GREEN) == HIGH && digitalRead(LED1RED) == LOW)){
    digitalWrite(LED3GREEN,LOW);
    tc3 = millis();
    t3 = millis();
     }


      if(readSwitch2 == pressed && digitalRead(LED3GREEN) == LOW && digitalRead(LED1RED) == LOW){//UP
    Serial.println("Pressed Switch2.");
    digitalWrite(LED2YELLOW,HIGH);
    delay(500);
    digitalWrite(LED2YELLOW,LOW);
    delay(500);
    digitalWrite(LED2YELLOW,HIGH);
    delay(500);
    digitalWrite(LED2YELLOW,LOW);
    delay(500);
  }
  else{
     digitalWrite(LED2YELLOW,LOW);
    }




     
}

#define button1 9
#define button2 11
#define button3 12
#define RED 2
#define YELLOW 3
#define GREEN 4

void setup() {
  Serial.begin(9600);
  pinMode(button1,INPUT_PULLUP);
  pinMode(button2,INPUT);
  pinMode(button3,INPUT);
  pinMode(RED,OUTPUT);
  pinMode(YELLOW,OUTPUT);
  pinMode(GREEN,OUTPUT);
  
}

void loop() {

  int L = digitalRead(button1);
  int M = digitalRead(button2);
  int R = digitalRead(button3);
  Serial.println(R);
  if(L == LOW) {
    Serial.println("left");
    digitalWrite(RED,HIGH);
    delay(200);
  }
  else{
    digitalWrite(RED,LOW);
  }

  if(M == LOW){
    Serial.println("mid");
    digitalWrite(YELLOW,HIGH);
    delay(200);
  }
  else{
    digitalWrite(YELLOW,LOW);
  }

  if(R == HIGH){
    Serial.println("right");
    digitalWrite(GREEN,HIGH);
    delay(200);
  } else{
    digitalWrite(GREEN,LOW);
  }


}

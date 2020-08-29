#define buttonL 9
#define buttonM 11
#define buttonR 12
#define Le 2
#define Md 3
#define Ri 4

  int checkRed = 0;
  int checkGreen = 0;

  long timerRed = 0;
  long timerGreen = 0;

void setup() 
{
  Serial.begin(9600); 
  pinMode(buttonL , INPUT_PULLUP);
  pinMode(buttonM , INPUT);
  pinMode(buttonR , INPUT);
  pinMode(Le , OUTPUT);
  pinMode(Md , OUTPUT);
  pinMode(Ri , OUTPUT);
}

void loop()
{
  int L = digitalRead(buttonL);
  int M = digitalRead(buttonM);
  int R = digitalRead(buttonR);

  if(L == LOW) {
    delay(200);
    if(checkRed == 0) {
      checkRed = 1;
    } else {
      checkRed = 0;
    }

    digitalWrite(Le, checkRed);
    timerRed = millis();
  } else if(millis() - timerRed >= 3000) {
    checkRed = 0;
    digitalWrite(Le, checkRed);
  }

  if(R == HIGH and checkRed == 0) {
    delay(200);
    if(checkGreen == 0) {
      checkGreen = 1;
    } else {
      checkGreen = 0;
    }

    digitalWrite(Ri, checkGreen);
    timerGreen = millis();
  } else if(millis() - timerGreen >= 3000) {
    checkGreen = 0;
    digitalWrite(Ri, checkGreen);
  }

  if(M == LOW) {
    for(int i=0; i<2; ++i) {
      digitalWrite(Md, 1);
      delay(500);
      digitalWrite(Md, 0);
      delay(500);
    }
  }
  
}

// motor one
#define enA  6
#define in1  5
#define in2  4
#define enB  10
#define in3  9
#define in4  8

uint8_t analog[] = { A0, A1, A2, A3, A4};

void setup()
{
  Serial.begin(9600);
  // set all the motor control pins to outputs
  pinMode(enA, OUTPUT);
  pinMode(in1, OUTPUT);
  pinMode(in2, OUTPUT);
  pinMode(enB, OUTPUT);
  pinMode(in3, OUTPUT);
  pinMode(in4, OUTPUT);
  for(int i=0; i<5; ++i)
    pinMode(analog[i], INPUT);
    
}

void FD(int SPEED1 , int SPEED2) {
  digitalWrite(in1, HIGH);
  digitalWrite(in2, LOW);
  analogWrite(enA, SPEED1);
  digitalWrite(in3, HIGH);
  digitalWrite(in4, LOW);
  analogWrite(enB, SPEED2);
}

void BK(int SPEED1 , int SPEED2) {
  digitalWrite(in1, LOW);
  digitalWrite(in2, HIGH);
  analogWrite(enA, SPEED1);
  digitalWrite(in3, LOW);
  digitalWrite(in4, HIGH);
  analogWrite(enB, SPEED2);
}

void SR(int SPEED1 , int SPEED2) {
  digitalWrite(in1, HIGH);
  digitalWrite(in2, LOW);
  analogWrite(enA, SPEED1);
  digitalWrite(in3, LOW);
  digitalWrite(in4, HIGH);
  analogWrite(enB, SPEED2);
}

void SL(int SPEED1 , int SPEED2) {
  digitalWrite(in1, LOW);
  digitalWrite(in2, HIGH);
  analogWrite(enA, SPEED1);
  digitalWrite(in3, HIGH);
  digitalWrite(in4, LOW);
  analogWrite(enB, SPEED2);
}

void TR(int SPEED) {
  digitalWrite(in1, HIGH);
  digitalWrite(in2, LOW);
  analogWrite(enA, SPEED);
  digitalWrite(in3, LOW);
  digitalWrite(in4, LOW);
}

void TL(int SPEED) {
  digitalWrite(in1, LOW);
  digitalWrite(in2, LOW);
  digitalWrite(in3, HIGH);
  digitalWrite(in4, LOW);
  analogWrite(enB, SPEED);
}

void AO() {
  digitalWrite(in1, LOW);
  digitalWrite(in2, LOW);
  digitalWrite(in3, LOW);
  digitalWrite(in4, LOW);
}


int state = 0;

bool sensor[] = {0,0,0,0,0};

int meanV = 590;

bool B(int n){  
  if(n < meanV){ // is black
      return true;
  }else{
      return false;
  } 
}

bool W(int n){  
    if(n >= meanV){ // is white
      return true;
  }else{
      return false;
  } 
}

void readTCRT()
{
  state = 0;
  for(int i=0; i<5; ++i)
  {
    sensor[i] = false;
    if(W(analogRead(analog[i])))
    {
      sensor[i] = true;
      state += pow(2,i);
    }
    Serial.print(state);
    Serial.print(" ");
    delay(300);
  }
  Serial.println();
}

void loop()
{
//  for (int i = 0; i < 4; ++i) {
//    FD(200, 155);
//    delay(2000);
//    AO();
//    delay(300);
//    SR(200, 150);
//    delay(180);
//    AO();
//    delay(300);
//  }
  FD(100,90);
  readTCRT();

  if(state == 2)
    SR(100, 80);

  if(state == 4)
    SL(100, 80);







}

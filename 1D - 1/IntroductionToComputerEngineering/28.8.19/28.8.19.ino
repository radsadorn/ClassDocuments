void setup()
{
  pinMode(12 , OUTPUT);
  pinMode(11 , OUTPUT);
  pinMode(10 , OUTPUT);
  pinMode( 9 , OUTPUT);
}

void loop()
{
  for(int i=12; i>8; --i) {
    digitalWrite(i,1);
    delay(500);
    digitalWrite(i,0);
  }
  for(int i=12; i>8; --i) {
    digitalWrite(i,1);
    delay(500);
  }
  for(int i=12; i>8; --i) {
    digitalWrite(i,0);
  }
  delay(500);
  for(int i=0; i<2; ++i) {
    for(int i=12; i>8; --i) {
      digitalWrite(i,1);
    }
    delay(500);
    for(int i=12; i>8; --i) {
      digitalWrite(i,0);
    }
    delay(500);
  }
}

void setup()
{
  pinMode(11, OUTPUT);
  pinMode(10, OUTPUT);
  pinMode( 9, OUTPUT);
}

void loop()
{
  digitalWrite(10, 1);
  digitalWrite(11, 0);
  digitalWrite( 9, 1);
    delay(200); 
    
/*  digitalWrite(11, 1);
  digitalWrite(10, 0);
  digitalWrite( 9, 0);
    delay(200); 

  digitalWrite( 9,1);
  digitalWrite(10,0);
  digitalWrite(11,0);
    delay(200); 

  digitalWrite(11,1);
  digitalWrite(10,1);
  digitalWrite( 9,0);
    delay(200); */
}

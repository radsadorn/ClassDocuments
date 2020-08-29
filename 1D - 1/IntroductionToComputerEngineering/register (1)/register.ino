void setup() {
  Serial.begin(9600);
}
void loop()
{
  //Sine Wave & Cosine Wave
  float angle=0;
  for(angle=0;angle<=1;angle=angle+0.2)
  {
    //float sina=sin(angle);
    //float cosa=cos(angle);
    //Serial.print(angle);
    Serial.print(" ");
    Serial.println(angle);
    delay(1);
 }
}

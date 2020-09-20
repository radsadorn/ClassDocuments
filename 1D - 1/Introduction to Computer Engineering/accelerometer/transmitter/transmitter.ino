#include <SoftwareSerial.h>
String inputString = "";
SoftwareSerial mySerial(8, 9);
double rad_con = 572957795 / 10000000;

int jitter(const int axis) {
  delay(1);
  long sum = 0;
  for (int i = 0; i < 16; i++) {
    sum += analogRead(axis);
  }
  return sum / 16;
}

void setup()
{
  Serial.begin(4800);
  //Serial.println("Hello World");
  mySerial.begin(4800);
  randomSeed(1000);
  pinMode(A0, INPUT);
  pinMode(A1, INPUT);
  pinMode(A2, INPUT);
}
void loop()
{
  long sum_x = 0, sum_y = 0, sum_z = 0;
  // put your main code here, to run repeatedly:

  float x_raw = jitter(A0) - 321;
  float y_raw = jitter(A1) - 322;
  float z_raw = jitter(A2);
  unsigned long timevar = millis();

  float x = abs(x_raw / 66);
  float y = y_raw / 64;
  float z = z_raw;

  double rad_x = asin(x) * rad_con;
  double rad_y = asin(y) * rad_con;
  double rad_z = asin(z) * rad_con;

  //transmitter

  //int a = random(-90, 90);
  //Serial.println(a);
  //mySerial.print(a);

  int a = rad_x;

  //แปลงค่าจากตัวเลขเป็นตัวอักษร
  int i=0;
  char inChar[3] = {};
  if(a < -9)
    inChar[2] = '-';
  else if( a < 0)
    inChar[1] = '-';

  a = abs(a);
  do {
    inChar[i] = '0' + a%10 ;
    a /= 10;
    ++i;
  } while(a);
  
  --i;
  if(inChar[1] == '-' || inChar[2] == '-')
    ++i;
    
  while(i+1) 
  {
    Serial.print("     ");
    Serial.println(inChar[i]);
    char Char = inChar[i];
    inputString += Char;
    --i;
  }

  mySerial.print(inputString);
  Serial.println(inputString);
  inputString = "";

  delay(800);

}

void serialEvent()
  {
  while (Serial.available())
  {
    //transmitter
      char inChar = (char)Serial.read();
      inputString += inChar;
      if (inChar == '\n')
      {
        //mySerial.print("TX from Software serial -> ");
        mySerial.println(inputString);
        inputString = "";
      }
  }
} 

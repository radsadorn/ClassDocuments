// G = 11        A A A A
// F = 10       F       B
// A = 9        F       B
// B = 8         G G G G
// E = 7        E       C
// D = 6        E       C
// C = 5         D D D D  DP
// H = 4
// 1 = 01100000
// 2 = 11011010
// 3 = 11110010
// 4 = 01100110
// 5 = 10110110
// 6 = 10111110

int pin[8]={9,8,5,6,7,10,11,4};
int num1[8]={0,1,1,0,0,0,0,0};
int num2[8]={1,1,0,1,1,0,1,0};
int num3[8]={1,1,1,1,0,0,1,0};
int num4[8]={0,1,1,0,0,1,1,0};
int num5[8]={1,0,1,1,0,1,1,0};
int num6[8]={1,0,1,1,1,1,1,0};
int num7[8]={1,0,1,1,1,1,1,0};
int num8[8]={1,1,1,0,0,0,0,0};
int num9[8]={1,1,1,1,0,1,1,0};
int num0[8]={1,1,1,1,1,1,0,0};
// display sign for win and lose
int L[8]={0,0,0,1,1,1,0,0};
int E[8]={1,0,0,1,1,1,1,0};
int non[8]={0,0,0,0,0,0,0,0};
int all[8]={1,1,1,1,1,1,1,1};
// display sign for transition
int a,number;
int beginnumber = 0;

void setup()
{
  int i;
  
  randomSeed(analogRead(0));
  Serial.begin(9600);
  pinMode(12, INPUT_PULLUP);
  pinMode(3, INPUT_PULLUP);
  
  for(i=0;i<8;i++)
  {
    pinMode(pin[i],OUTPUT);  
  }


  
}

void numberdisplay(int a)
{
  int i;

  if(a==1)
  for(i=0;i<8;i++)
  {
    digitalWrite(pin[i],!num1[i]);
  }
  else
  if(a==2)
  for(i=0;i<8;i++)
  {
    digitalWrite(pin[i],!num2[i]);
  }
  else if(a==3)
  for(i=0;i<8;i++)
  {
    digitalWrite(pin[i],!num3[i]);
  }
  else if(a==4)
  for(i=0;i<8;i++)
  {
    digitalWrite(pin[i],!num4[i]);
  }
  else if(a==5)
  for(i=0;i<8;i++)
  {
    digitalWrite(pin[i],!num5[i]);
  }
  else if(a==6)
  for(i=0;i<8;i++)
  {
    digitalWrite(pin[i],!num6[i]);
  }
  else if(a==7)
  for(i=0;i<8;i++)
  {
    digitalWrite(pin[i],!num7[i]);
  }
  else if(a==8)
  for(i=0;i<8;i++)
  {
    digitalWrite(pin[i],!num8[i]);
  }
  else if(a==9)
  for(i=0;i<8;i++)
  {
    digitalWrite(pin[i],!num9[i]);
  }
  else if(a==10)
  for(i=0;i<8;i++)
  {
    digitalWrite(pin[i],!num0[i]);
  }
  else if(a==11)
  for(i=0;i<8;i++)
  {
    digitalWrite(pin[i],!all[i]);
  }
  else if(a==12)
  for(i=0;i<8;i++)
  {
    digitalWrite(pin[i],!L[i]);
  }
  else if(a==13)
  for(i=0;i<8;i++)
  {
    digitalWrite(pin[i],!non[i]);
  }
  else if(a==14)
  for(i=0;i<8;i++)
  {
    digitalWrite(pin[i],!E[i]);
  }

}

int randomthenumber()
{
return random(1,7);
}

void effecttransition()
{

  int i,j;
  for(j=0;j<3;j++)
  {
  for(i=0;i<14;i++)
  {
  numberdisplay(i);
  delay(25);
  }
  }
}

void effecttransition1()
{

  int i,j;
  for(j=0;j<3;j++)
  {
  
  numberdisplay(13);
  delay(50);
  numberdisplay(11);
  delay(25);
 
  }
}
void losedisplay()
{
   numberdisplay(12);
  delay(250);
  numberdisplay(10);
  delay(250);
  numberdisplay(5);
  delay(250);
  numberdisplay(14);
  delay(250);

}
void winanimation()
{

  int i;
  int disE[8]={0,0,0,0,1,0,0,0};
  int disF[8]={0,0,0,0,0,1,0,0};
  int disA[8]={1,0,0,0,0,0,0,0};
  int disB[8]={0,1,0,0,0,0,0,0};
  int disC[8]={0,0,1,0,0,0,0,0};
  int disD[8]={0,0,0,1,0,0,0,0};
  delay(50);
  for(i=0;i<8;i++)
  {
    digitalWrite(pin[i],!disE[i]);
    delay(50);
  }
  for(i=0;i<8;i++)
  {
    digitalWrite(pin[i],!disF[i]);
    delay(50);
  }
  for(i=0;i<8;i++)
  {
    digitalWrite(pin[i],!disA[i]);
    delay(50);
  }
  for(i=0;i<8;i++)
  {
    digitalWrite(pin[i],!disB[i]);
    delay(50);
  }
  for(i=0;i<8;i++)
  {
    digitalWrite(pin[i],!disC[i]);
    delay(50);
  }
  for(i=0;i<8;i++)
  {
    digitalWrite(pin[i],!disD[i]);
    delay(50);
  }
  numberdisplay(13);
  delay(50);
  numberdisplay(11);
  delay(25);
  numberdisplay(13);
  delay(50);
  numberdisplay(11);
  delay(25);
  
  
}
void WinOrNot(int number)
{
  int i,j;

  j = randomthenumber();
  Serial.print(j);
  numberdisplay(j);
  delay(500);
  numberdisplay(13);
  delay(250);
  numberdisplay(j);
  delay(500);
  numberdisplay(13);
  delay(250);
  numberdisplay(j);
  delay(500);
  numberdisplay(13);
  delay(250);

  if(number == j)
  {
    winanimation();
    delay(500);
  }
  else
  {
    losedisplay();
    delay(500);
  }

  beginnumber=0;
}

void loop()
{
  
  a=beginnumber%6+1;
  
  numberdisplay(a);  

  if(digitalRead(3) == 0) // ressing Button B
    {
      effecttransition();
      WinOrNot(a);
    }
  else if(digitalRead(12) == 0) // Pressing Button A
  {
    effecttransition1();
    delay(200);
    beginnumber++;
  }


  
}

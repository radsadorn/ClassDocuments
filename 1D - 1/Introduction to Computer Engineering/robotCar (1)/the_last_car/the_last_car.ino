/// Motor One ///
int enA = 6;
int in1 = 11;
int in2 = 12;

int enB = 5;
int in3 = 8;
int in4 = 9;

int ss_temp = 0;
int ss[5] = {0,0,0,0,0};

int led[5] ={13,10,7,4,3};

int error = 0;
float last_error = 0;
float kp = 30;
float kd = 15;
float pid = 0;

float start_speed = 100;
float start_speed_l = 60;
float start_speed_r = 50;
int intersec = 0;
int BW = 680;
float B[5] = {650, 6.5, 650, 650, 630};

void check_sensor(){
  for(int i=4;i>=0;i--){
      ss_temp = 0;
      for(int j=0;j<16;j++){
        ss_temp += analogRead(i);  
      }

      ss_temp /= 16;

      if(i==0){
        if(ss_temp > BW+200){
          ss[4-i] = 1; 
          digitalWrite(led[i],HIGH); 
        }else{
          ss[4-i] = 0;
          digitalWrite(led[i],LOW); 
        }  
      }else{
          if(ss_temp > BW){
            ss[4-i] = 1; 
            digitalWrite(led[i],HIGH); 
          }else{
            ss[4-i] = 0;
            digitalWrite(led[i],LOW); 
          }  
      }
  }  

  if(ss[0] == 0 && ss[1] == 0 && ss[2] == 0 && ss[3] == 0 && ss[4] == 0){       /// 0 0 0 0 0 ///   
    error = 1000;
  }
  else if(ss[0] == 1 && ss[1] == 0 && ss[2] == 1 && ss[3] == 1 && ss[4] == 0){  /// 1 0 1 1 0 ///
    error = 5;
  }
  else if(ss[0] == 1 && ss[1] == 0 && ss[2] == 1 && ss[3] == 0 && ss[4] == 0){  /// 1 0 1 0 0 ///
    error = 5;
  }
  else if(ss[4] == 1 && ss[1] == 1 && ss[2] == 1 && ss[3] == 0 && ss[4] == 0){  /// 1 1 1 0 0 ///
    error = 4;
  }
  else if(ss[0] == 1 && ss[1] == 1 && ss[2] == 0 && ss[3] == 0 && ss[4] == 0){  /// 1 1 0 0 0 ///
    error = 3;
  }
  else if(ss[0] == 0 && ss[1] == 1 && ss[2] == 0 && ss[3] == 0 && ss[4] == 0){  /// 0 1 0 0 0 ///
    error = 2;
  }
  else if(ss[0] == 0 && ss[1] == 1 && ss[2] == 1 && ss[3] == 0 && ss[4] == 0){  /// 0 1 1 0 0 ///
    error = 1;
  }
  else if(ss[0] == 0 && ss[1] == 0 && ss[2] == 1 && ss[3] == 0 && ss[4] == 0){  /// 0 0 1 0 0 ///
    error = 0;
  }
  else if(ss[0] == 0 && ss[1] == 0 && ss[2] == 1 && ss[3] == 1 && ss[4] == 0){  /// 0 0 1 1 0 ///
    error = -1;
  }
  else if(ss[0] == 0 && ss[1] == 0 && ss[2] == 0 && ss[3] == 1 && ss[4] == 0){  /// 0 0 0 1 0 ///
    error = -2;
  }
  else if(ss[0] == 0 && ss[1] == 0 && ss[2] == 0 && ss[3] == 1 && ss[4] == 1){  /// 0 0 0 1 1 ///
    error = -3;
  }
  else if(ss[0] == 0 && ss[1] == 0 && ss[2] == 1 && ss[3] == 1 && ss[4] == 1){  /// 0 0 1 1 1 ///
    error = -4;
  }
  else if(ss[0] == 0 && ss[1] == 0 && ss[2] == 1 && ss[3] == 0 && ss[4] == 1){  /// 0 0 1 0 1 ///
    error = -5;
  }
  else if(ss[0] == 0 && ss[1] == 1 && ss[2] == 1 && ss[3] == 0 && ss[4] == 1){  /// 0 1 1 0 1 ///
    error = -5;
  }
  else if(ss[0] == 0 && ss[1] == 1 && ss[2] == 1 && ss[3] == 1 && ss[4] == 0){  /// 0 1 1 1 0 ///
    error = 2;
  }
  else if(ss[0] == 1 && ss[1] == 1 && ss[2] == 1 && ss[3] == 1 && ss[4] == 1){  /// 1 1 1 1 1 ///
    error = 100;
  }
};

void move_forward(){
//  digitalWrite(in1A,HIGH);
//  digitalWrite(in2A,LOW);
//  digitalWrite(in1B,HIGH);
//  digitalWrite(in2B,LOW);
}



void setup()
{
  Serial.begin(9600);
  /// Set all the motor control pins to outputs ///
  pinMode(enA,OUTPUT);
  pinMode(in1,OUTPUT);
  pinMode(in2,OUTPUT);
  pinMode(enB,OUTPUT);
  pinMode(in3,OUTPUT);
  pinMode(in4,OUTPUT);

  /// Sensor ///
  pinMode(0,INPUT);
  pinMode(1,INPUT);
  pinMode(2,INPUT);
  pinMode(3,INPUT);
  pinMode(4,INPUT);

  /// LED ///
  for(int i=0; i<5;++i)
  pinMode(led[i],OUTPUT);
}

void loop()                                 
{
  check_sensor(); 

  /*if(error == 100){
    /// Turn Left ///
    FD(start_speed-10,start_speed);
    delay(100);
    AO();
    do{
      check_sensor();
      FD(start_speed-60,start_speed+60);
    }while(error != 0);
  }
  else if(error == 101){
    /// Turn Left ///
    FD(start_speed-10,start_speed);
    delay(100);
    AO();
    do{
      check_sensor();
      FD(start_speed-60,start_speed+60);
    }while(error != 0);
  }
  else if(error == 102){
    /// Turn Right ///
    AO();
    do{
      check_sensor();
      FD(start_speed+40,start_speed-20);
    }while(error != 0);
  }
  else*/ 
  switch(error){
    case 1000:
      check_sensor();
      while(error == 1000 || error == 0){
        check_sensor();
        BK(start_speed_l+20,start_speed_r+20);  
      }
      break;
    case 100:
        intersec++;
        check_sensor();
        while( error == 100 )
        {
          check_sensor();
          FD(start_speed_l+20,start_speed_r+20);
        }
        FD(start_speed_l-40,start_speed_r+60);
      break;
    case 5:
      FD(start_speed_l-40,start_speed_r+180);
      break;
    case -5:
      FD(start_speed_l+100,start_speed_r-40);
      break;
    case 4:
      FD(start_speed_l-60,start_speed_r+100);
      break;
    case 3:
      FD(start_speed_l-60,start_speed_r+100);
      break;
    case 2:
      FD(start_speed_l-40,start_speed_r+100);
      break;
    case 1:
      FD(start_speed_l-40,start_speed_r+40);
      break;
    case 0:
      FD(start_speed_l+20,start_speed_r+20);
      break;
    case -1:
      FD(start_speed_l+80,start_speed_r);
      break;
    case -2:
      FD(start_speed_l+100,start_speed_r);
      break;
    case -3:
      FD(start_speed_l+120,start_speed_r);
      break;
    case -4:
      FD(start_speed_l+60,start_speed_r-40);
      break;
  }
  
  /*if(error == 100){
   FD(start_speed_l-20,start_speed_r+140);
  }
  else if(error == 4){
   FD(start_speed_l-20,start_speed_r+140);
  }
  else if(error == 3){
   FD(start_speed_l,start_speed_r+120);
  }
  else if(error == 2){
   FD(start_speed_l,start_speed_r+100);
  }
  else if(error == 1){
   FD(start_speed_l,start_speed_r+80);
  }
  else if(error == 0){
   FD(start_speed_l+20,start_speed_r+20);
  }
  else if(error == -1){
   FD(start_speed_l+80,start_speed_r);
  }
  else if(error == -2){
   FD(start_speed_l+100,start_speed_r);
  }
  else if(error == -3){
   FD(start_speed_l+120,start_speed_r);
  }
  else if(error == -4){
   FD(start_speed_l+120,start_speed_r);
  }*/

  //FD(start_speed_l,start_speed_r);
  
  output();
}

void output()
{
  Serial.print(analogRead(4));
  Serial.print(" "); 
  Serial.print(analogRead(3));
  Serial.print(" ");  
  Serial.print(analogRead(2));
  Serial.print(" ");  
  Serial.print(analogRead(1));
  Serial.print(" ");  
  Serial.println(analogRead(0));
  Serial.println(" ");
  
  /*Serial.print(ss[4]);
  Serial.print(" "); 
  Serial.print(ss[3]);
  Serial.print(" ");  
  Serial.print(ss[2]);
  Serial.print(" ");  
  Serial.print(ss[1]);
  Serial.print(" ");  
  Serial.print(ss[0]);
  Serial.print(" ");  */
  
  Serial.print(" Error : ");
  Serial.println(error);  
  
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

void TR() {
  //AO();
  FD(start_speed-40,start_speed+40);
}

void TL() {
  //AO();
  FD(start_speed+30,start_speed-30);
}

void AO() {
  digitalWrite(in1, LOW);
  digitalWrite(in2, LOW);
  digitalWrite(in3, LOW);
  digitalWrite(in4, LOW);
}

void circle()
{
    SR(start_speed, start_speed);
}

void finish()
{
    if(intersec >= 3)
    AO();
    else FD(start_speed,start_speed-40);
}

void intersection()
{
    intersec++;
//    FD(start_speed_l+20,start_speed_r+20);
//    if(intersec > 2 and intersec < 5)
//    {
//       while(analogRead(A3)>BW)
//        {
//          FD(start_speed_l-40,start_speed_r+60);
//        }
//    }
//    else
//    {
        while( error == 1000 )
        {
          FD(start_speed_l+20,start_speed_r+20);
        }
//    }
}

int ss_temp = 0;
int[] ss = new int[5];

float error = 0;
float last_error = 0;
float kp = 30;
float kd = 15;
float pid = 0;

int start_speed = 50;
int intersec = 0;

void check_sensor(){
  for(int i=4;i>=0;i--){
      ss_temp = analog(i);

      if(ss_temp < 630){
        ss[4-i] = 1; 
        //digitalWrite(12-i,HIGH); 
      }else{
        ss[4-i] = 0;
        //digitalWrite(12-i,LOW); 
      }
  }  

  if(ss[0] == 1 && ss[1] == 1 && ss[2] == 1 && ss[3] == 1 && ss[4] == 1){
    error = 4;
  }else if(ss[0] == 1 && ss[1] == 0 && ss[2] == 0 && ss[3] == 0 && ss[4] == 1){
    error = 3;
  }else if(ss[0] == 0 && ss[1] == 1 && ss[2] == 0 && ss[3] == 0 && ss[4] == 0){
    error = 2;
  }else if(ss[0] == 0 && ss[1] == 1 && ss[2] == 1 && ss[3] == 0 && ss[4] == 0){
    error = 1;
  }
  else if(ss[0] == 0 && ss[1] == 0 && ss[2] == 1 && ss[3] == 0 && ss[4] == 0){
    error = 0;
  }
  else if(ss[0] == 0 && ss[1] == 0 && ss[2] == 1 && ss[3] == 1 && ss[4] == 0){
    error = -1;
  }
  else if(ss[0] == 0 && ss[1] == 0 && ss[2] == 0 && ss[3] == 1 && ss[4] == 0){
    error = -2;
  }else if(ss[0] == 0 && ss[1] == 0 && ss[2] == 0 && ss[3] == 0 && ss[4] == 0){
    error = -3;
  }else if(ss[0] == 0 && ss[1] == 1 && ss[2] == 1 && ss[3] == 1 && ss[4] == 0){
    error = -4;
  }

}

void setup()
{
  
}

void loop()                                 
{
  check_sensor(); 

  lcd("%d %d %d %d %d %d", analog(0),analog(1),analog(2),analog(3),analog(4), intersec);
  
  if(error == 4)
   circle();
  else if(error == 3)
   finish();
  else if(error == 2)
   SL();
  else if(error == 1)
   TL();
  else if(error == 0)
   FD();
  else if(error == -1)
   TR();
  else if(error == -2)
   SR();
  else if(error == -3)
   FD();
  else if(error == -4)
   intersection();
}

void FD() {
   motor(1,start_speed);
   motor(2,start_speed);
}

void BK() {
    motor(1,-start_speed);
    motor(2,-start_speed);
}

void SR() {
    motor(1,-start_speed);
    motor(2,start_speed * 2);
}

void SL() {
    motor(1,start_speed * 2);
  motor(2,-start_speed);
}

void TR() {
    AO();
    FD();
    while(analog(2) < 630);
    AO();
    SR();
    while(analog(2) > 630);
    SR();
    while(analog(2) < 630);
    SR();
}

void TL() {
  AO();
  FD();
    while(analog(2)<630);
    AO();
     SL();
     while(analog(2) > 630);
     SL();
     while(analog(2)< 630);
     SL();

}

void AO() {
    motor(1,0);
    motor(2,0);
}

void circle()
{
    SR();
}

void finish()
{
    if(intersec >= 3)
    AO();
    else FD();
}

void intersection()
{
    intersec++;
    AO();
    sleep(200);
    FD();
    if(intersec == 3)
    {
        TR();
    }
    else
    {
        FD();
        while(analog(3)<630);
    }
}
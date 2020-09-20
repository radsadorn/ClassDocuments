#include <LedControl.h>
#include "FontLEDClock.h" // Font library

#define SET_BUTTON 2
#define CHANGE_BUTTON 4
#define STOP_BUTTON 3

unsigned long int dtTime;
unsigned long int timer = 0;
int keep = 0;
double x_raw;
int x_raw_min = 290;
int x_raw_max = 440;

LedControl lc = LedControl(11, 13, 10, 4); // DIN,CLK,CS,Number of LED Module
uint8_t intensity = 1;

unsigned long delaytime = 50;

void setup() {
  Serial.begin(9600);
  int devices = lc.getDeviceCount();
  for (int address = 0; address < devices; address++) {
    lc.shutdown(address, false);
    lc.setIntensity(address, 8);
    lc.clearDisplay(address);
  }
  pinMode(A0,INPUT);
  pinMode(A1,INPUT);
  pinMode(A2,INPUT);
  pinMode(A5,INPUT);
  pinMode(SET_BUTTON,INPUT_PULLUP);
  pinMode(CHANGE_BUTTON,INPUT_PULLUP);
  pinMode(STOP_BUTTON,INPUT_PULLUP);

  noInterrupts();           /* disable all interrupts             */
  TCCR1A  = 0;
  TCCR1B  = 0;
  TCNT1   = 3036;           /* preload timer 65536-16MHz/256/1Hz  */
  TCCR1B |= (1 << CS12);    /* 256 prescaler                      */
  TIMSK1 |= (1 << TOIE1);   /* enable timer overflow interrupt    */
  interrupts();     
}

typedef struct State {
  String CLOCK;
  unsigned long int num;
} SType;

SType TIME[3] = { {"",23}, {"",59}, {"",0} };
SType stopwatch[3] =  { {"",0}, {"",0}, {"",0} };
SType alarm[2] = { {"",0}, {"",0}};

typedef struct SCalender {
  int num[3] = { 1, 1, 1}; //yy/mm/dd
  int numDate[12] = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31};
  int numMonth = 10;
  String month[12] = { "JAN", "FEB", "MAR", "APR", "MAY", "JUN", "JUL", "AUG", "SEP", "OCT", "NOV", "DEC"};
  int numYear = 19;
} cal;

cal CAL;

int jitter(const int axis){
    delay(1);
    long sum = 0;
    for(int i=0;i<16;i++){
      sum += analogRead(axis);
    }
    return sum/16;
}

void test_all_led(){
    for (uint8_t x = 0; x <= 31; x++) {
      for (uint8_t y = 0; y <= 7; y++) {
        plot(x, y, 1);
        delay(2);
    }
  }
  clear_display();
}

void line(int y){
  if(TIME[2].num < 30)
    for(int i=1; i<=TIME[2].num + 1; ++i)
      plot(i , y, 1);
  else if(TIME[2].num < 59)
    for(int i=1; i<=60 - TIME[2].num - 1; ++i)
      plot(i , y, 1);
      
  if (TIME[2].num >= 30)
      plot(60 - TIME[2].num  , y, 0);
}

//plot a point on the display
void plot (uint8_t x, uint8_t y, bool value) {

  uint8_t address;
  if (x >= 0 && x <= 7)   { address = 3; }
  if (x >= 8 && x <= 15)  { address = 2; x = x - 8; }
  if (x >= 16 && x <= 23) { address = 1; x = x - 16; }
  if (x >= 24 && x <= 31) { address = 0; x = x - 24; }

  lc.setLed(address, y, x, value);
}

//clear screen
void clear_display() {
  for (uint8_t address = 0; address < 4; address++) {
    lc.clearDisplay(address);
  }
}

void print_tiny_char(int x, int y, char c)
{
  uint8_t dots;
  if (c >= 'A' && c <= 'Z' || (c >= 'a' && c <= 'z') ) { c &= 0x1F; }  // A-Z maps to 1-26 
  else if (c >= '0' && c <= '9') { c = (c - '0') + 32; }
  else if (c == ' ') { c = 0;  } // space 
  else if (c == '.') { c = 27; } // colon 
  else if (c == ':') { c = 28; } // colon 
  else if (c == '\''){ c = 29; } // single quote mark 

  for (uint8_t col = 0; col < 4; col++) {
    dots = pgm_read_byte_near(&mytinyfont[c][col]);
    for (uint8_t row = 0; row < 5; row++) {      
      if (dots & (16 >> row))
        plot(abs( x + col ), abs( y + row ), true);
      else
        plot(abs( x + col ), abs( y + row ), false);
    }
  }
}

void print_bell(int x, int y) {
  uint8_t dots;

  for (uint8_t col = 0; col < 8; col++) {
    dots = pgm_read_byte_near(&mybell[0][col]);
    for (uint8_t row = 0; row < 5; row++) {      
      if (dots & (16 >> row))
        plot(abs( x + col ), abs( y + row ), true);
      else
        plot(abs( x + col ), abs( y + row ), false);
    }
  }
}

ISR(TIMER1_OVF_vect)        // interrupt service routine
{
  TCNT1 = 3036;             /* preload timern */
  TIME[2].num++;
}

int a,b = 1; int rotate = 1; int light; int LDR; int i , count, y;
void ROTATE() {
  x_raw = jitter(A0);

  a = map(x_raw,x_raw_min,x_raw_max,-90,90);
  if( a / b < 0 ) {
    test_all_led();
    rotate *= -1;
  }
  b = a;

  if( rotate == -1 ) { i=0; count = 1; y = 1; }
  else { i=-8; count = -1; y = -6; }
  
  Serial.print(x_raw); Serial.print(" "); Serial.println(analogRead(A5));
}

void LIGHT() {
  light = map(analogRead(A5), 100, 1000, 1, 10);
  for (int address = 0; address < 4; address++) {
    lc.setIntensity(address, 10 - (analogRead(A5)/100));
  }
}

//display
void SHOW() {
  ROTATE();
  
  for(int k = 0; k<3 ; ++k) {
    TIME[k].CLOCK = "";
    keep = TIME[k].num;
    for (int i = 0; i < 2; ++i)
    {
      TIME[k].CLOCK += keep / 10;
      keep = keep % 10 * 10;
    }
  }
  
  line(y+6);
  
  for(int m = 0; m < 3; m++) {
    for (int k = 0; k < 2; ++k) {
      print_tiny_char((i * 4)+1, y, TIME[m].CLOCK[k]);
      i++;
    }
    if(m!=2 && TIME[2].num!=0)
      print_tiny_char((i * 4)+1, y, ':');
    i++;
  }
}

void DATE() {
  ROTATE();

  for(int i=1; i<=30; ++i)
      plot(i , y+6, 1);

  CAL.num[2] = CAL.num[2] % CAL.numDate[CAL.num[1]];
  CAL.num[1] = CAL.num[1]%12;
  CAL.num[0] = CAL.num[0]%100;
  
  int k=0;
  print_tiny_char((i * 4)+count, y, (CAL.num[2]+1)/10 + '0'); i++;
  print_tiny_char((i * 4)+count, y, (CAL.num[2]+1)%10 + '0'); i++;
  while(CAL.month[CAL.num[1]][k]) {
    print_tiny_char((i * 4)+count+1, y, CAL.month[CAL.num[1]][k]); i++; k++;
  } 
  print_tiny_char((i * 4)+count+1, y, '.');
  print_tiny_char((i * 4)+count+3, y, CAL.num[0]/10 + '0'); i++;
  print_tiny_char((i * 4)+count+3, y, CAL.num[0]%10 + '0');
}

void BLINK(int mode) {
  ROTATE();
  
  int k=0, m;
  switch(mode) {
    case 0: k=4*i; m=k+9; break;
    case 1: i+=2; k=4*i+1; m=k+13; break;
    case 2: i+=6; k=4*i-1; m=k+8; break;
  }
  while(k!=m) {
    int n = 0;
    while(n<5) {
      plot(abs(k+1) , abs(y+n), 0); n++;
    }
    k++;
  }
}

void setTime(int mode) {
  BLINK(mode);
  delay(100);
  SHOW();
}

void setDate(int mode) {
  BLINK(mode);
  delay(100);
  DATE();
}

int pause; bool checkcontinue = false; bool checkreset = true; int stopstart;
void STOPWATCH(int start, int reset) {
  ROTATE();
  
  if(!checkcontinue and start) {
    stopstart = TIME[2].num;
    checkreset = false;
    checkcontinue = true;
    stopwatch[2].num = pause;
  } 
  else if(checkcontinue and start) {
    pause = stopwatch[2].num;
    checkcontinue = false;
  }
  else if(!checkreset and reset) {
    checkreset = true;
    checkcontinue = false;
    for(int i=0; i<3; ++i)
      stopwatch[i].num = 0;
    pause =0;
  } 
  else if(checkreset)
    stopwatch[2].num = 0;
  else if(!checkcontinue )
    stopwatch[2].num = pause;
  else if(checkcontinue ) {
    if(TIME[2].num == 0 and stopstart == 59)
      stopstart = -1;
    stopwatch[2].num += TIME[2].num - stopstart;
    stopstart = TIME[2].num;
  }

  if(stopwatch[2].num == 60)
    stopwatch[1].num++;
  if(stopwatch[1].num == 60)
    stopwatch[0].num++;
  
  stopwatch[0].num%=24;
  stopwatch[1].num%=60;
  stopwatch[2].num%=60;
  
   for(int k = 0; k<3 ; ++k) {
    stopwatch[k].CLOCK = "";
    keep = stopwatch[k].num;
    for (int i = 0; i < 2; ++i)
    {
      stopwatch[k].CLOCK += keep / 10;
      keep = keep % 10 * 10;
    }
  }
  
  line(y+6);
  
  for(int m = 0; m < 3; m++) {
    for (int k = 0; k < 2; ++k) {
      print_tiny_char((i * 4)+1, y, stopwatch[m].CLOCK[k]);
      i++;
    }
    if(m!=2 && stopwatch[2].num!=0)
      print_tiny_char((i * 4)+1, y, ':');
    i++;
  }
}

void TIMER() {
  ROTATE();
}

void setALARM(int mode) {
  BLINK(mode);
  delay(100);
  ROTATE();

  alarm[0].num%=24;
  alarm[1].num%=60;
  for(int k = 0; k<2 ; ++k) {
    alarm[k].CLOCK = "";
    keep = alarm[k].num;
    for (int i = 0; i < 2; ++i)
    {
      alarm[k].CLOCK += keep / 10;
      keep = keep % 10 * 10;
    }
  }
  
  for(int i=1; i<=30; ++i)
      plot(i , y+6, 1);
  
  for(int m = 0; m < 2; m++) {
    for (int k = 0; k < 2; ++k) {
      print_tiny_char((i * 4)+3, y, alarm[m].CLOCK[k]);
      i++;
    }
    if(m!=1)
      print_tiny_char((i * 4)+3, y, ':');
    i++;
  }

  print_bell((i * 4), y);
}

bool soundAlarm = false;
void ALARM(int input) {
  if(input)
    soundAlarm = false;
  else if(alarm[0].num == TIME[0].num)
    if(alarm[1].num == TIME[1].num)
      soundAlarm = true;
    else soundAlarm = true;

  if(soundAlarm)
    int a;
}

int input1;
int input2;
int input3;
int mode = 0;
int change = 0;
void BUTTONPRESSED() {
  input1 = !digitalRead(SET_BUTTON);
  mode = (mode+input1)%6;
  
  if(mode != change) input2 = 0;
  
  if(mode == 4 || mode == 5) input2 = (input2+!digitalRead(CHANGE_BUTTON))%2;
  else input2 = (input2+!digitalRead(CHANGE_BUTTON))%3;
    
  input3 = !digitalRead(STOP_BUTTON);

  if(input1)
    clear_display();

  ROTATE();
  LIGHT();
  ALARM(input1);
  
  switch(mode) 
  {
    case 0: if(TIME[2].num ==25 or TIME[2].num == 31)
              test_all_led();
            if(TIME[2].num >=25 and TIME[2].num <= 30) {
              DATE();
            } else SHOW(); break;
    case 1: DATE(); break;
    case 2: 
            if(input2 == 2 and input3 == 1)
              TIME[input2].num = 0;
            else if(input3 == 1) 
              TIME[input2].num++;
            setTime(input2); break;
            
    case 3: if(input3 == 1) CAL.num[3-input2-1]++;
            setDate(input2); break;
    case 4: STOPWATCH(input2, input3); break;
    case 5: if(input3 == 1) alarm[input2].num++;
            setALARM(input2); break;
    default: break;
    
  }

  change = mode;
}

void CLOCK() {
  while (TIME[0].num < 24) {
    while (TIME[1].num < 60) {
      while (TIME[2].num < 60) {
        
        ROTATE();
        
        TIME[1].num%=60;
        TIME[0].num%=24;
        
        BUTTONPRESSED();
      }
    TIME[2].num = 0;
    TIME[1].num++;
  }
  TIME[1].num = 0;
  TIME[0].num++;
  }
}

void loop() {
  test_all_led();
  while (1)
  {
    CLOCK();
    
    CAL.num[3]++;
    if(CAL.num[3] == CAL.numDate[CAL.num[1]])
      CAL.num[1]++;
    if(CAL.num[1] == 12)
      CAL.num[0]++;
    TIME[0].num = 0;
  }
}

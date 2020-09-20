#define buttonL 9
#define buttonM 11
#define buttonR 12
#define Le 2
#define Md 3
#define Ri 4

long timerRed;
long timerGreen;
long timerYellow;

int vr = 0;
int vy = 0;
int vg = 0;

void setup() {
  pinMode(buttonL, INPUT_PULLUP);
  pinMode(buttonM, INPUT);
  pinMode(buttonR, INPUT);
  pinMode(Le, OUTPUT);
  pinMode(Md, OUTPUT);
  pinMode(Ri, OUTPUT);
  
}

int Control(int pressed, int v, long timer) {
  if(pressed == 0 and millis() - timer >= 200) {
    if(v == 0) return 1;
    else return 0;
  }
  if(millis() - timer>3000) {
    return 0;
  }
}

/* int ControlYel(int pressed, int v, long timer) {
  if(millis()> 2000 and millis() - timer <=2000) {
    return (millis() - timer) / 500 % 2;
  }
} */

void Light_on_off(int red, int yellow, int green) {
  digitalWrite(Le, red);
  digitalWrite(Md, yellow);
  digitalWrite(Ri, green);
}

void loop() {
  
  int L = digitalRead(buttonL);
  int M = digitalRead(buttonM);
  int R = digitalRead(buttonR);
  if(L == 0)
    timerRed = millis();
  if(M == 0)
    timerYellow = millis();
  if(R == 1)
    timerGreen = millis();
   
  vr = Control(L,vr,timerRed);
  //vy = ControlYel(M,vy,timerYellow);
  vg = Control((R+1-2)*(-1),vg,timerGreen);
  
  Light_on_off(vr,vy,vg);
  
}

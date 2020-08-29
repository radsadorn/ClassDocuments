#define button1 12
#define button2 11
#define button3 9
#define R 4
#define Y 3
#define G 2

unsigned long past1 = 0;
unsigned long past2 = 0;
unsigned long past3 = 0;

int RED = LOW;
int YELLOW = LOW; 
int GREEN = LOW;

const long interval1 = 3000; //R
const long interval2 = 500;  //Y
const long interval3 = 3000; //G

void LightOnOff(int,int,int);
int RedLight(int);
int YellowLight(int);
int GreenLight(int);


void setup() {
  Serial.begin(9600);
  pinMode(button1,INPUT);//DOWN
  pinMode(button2,INPUT);//UP
  pinMode(button3,INPUT_PULLUP);//INTERNAL
  pinMode(R,OUTPUT);
  pinMode(Y,OUTPUT);
  pinMode(G,OUTPUT);
  
}

void loop() {
  int S1 = digitalRead(button1);
  int S2 = digitalRead(button2);
  int S3 = digitalRead(button3);

  unsigned long current = millis();
            
       if(S1 == HIGH){
          delay(198);       
          if(RED == HIGH){
            RED = LOW;
          }
          else{
            RED = HIGH;
          }
          digitalWrite(R, RED);
            past1 = current;
       }
       if (current - past1 >= interval1) {
            RED = LOW;
            digitalWrite(R, RED);
           
       }

       if(S3 == LOW && RED == LOW){
            delay(198);
            if(GREEN == HIGH){
              GREEN = LOW;
            }
            else{
              GREEN = HIGH;
            }
            digitalWrite(G, GREEN); 
            past3 = current;    
       }
       if (current - past3 >= interval3) {
            GREEN = LOW;
            digitalWrite(G, GREEN);
            
       }

       if(S2 == LOW && RED == LOW && GREEN == LOW){
            delay(198);
            if(YELLOW == HIGH){
              YELLOW = LOW;
            }
            else{
              YELLOW = HIGH; digitalWrite(Y, YELLOW);    
              delay(500);
              YELLOW = LOW; digitalWrite(Y, YELLOW);    
              delay(500);
              YELLOW = HIGH; digitalWrite(Y, YELLOW);    
              delay(500);
              YELLOW = LOW; digitalWrite(Y, YELLOW);    
              delay(500);
            }
            digitalWrite(Y, YELLOW);  
            past2 = current;   
       }
       if (current - past2 >= interval1) {
            YELLOW = LOW;
            digitalWrite(Y, YELLOW);
            
       }

}

 

void LightOnOff(int red,int yellow,int green){
    RedLight(red);
    YellowLight(yellow);
    GreenLight(green);
}

int RedLight(int x){
    RED = x;
    digitalWrite(R, RED);
    delay(1000);
}
int YellowLight(int x){
    YELLOW = x;
    digitalWrite(Y, YELLOW);
    delay(1000);
}
int GreenLight(int x){
    GREEN = x;
    digitalWrite(G, GREEN);
    delay(1000);
}

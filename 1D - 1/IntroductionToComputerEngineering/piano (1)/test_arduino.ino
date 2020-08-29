#include "pinches.h"

int speaker = 13;

int switch1 = 2;
int switch2 = 3;
int switch3 = 4;
int switch4 = 5;
int switch5 = 6;
int switch6 = 7;
int switch_save= 10;

int note5 = NOTE_C4;
int note4 = NOTE_D4;
int note3 = NOTE_E4;
int note2 = NOTE_F4;
int note1 = NOTE_G4;

int check5=0;
int check4=0;
int check3=0;
int check2=0;
int check1=0;

bool press5 = false;
bool press4 = false;
bool press3 = false;
bool press2 = false;
bool press1 = false;

long timer5=0;
long timer4=0;
long timer3=0;
long timer2=0;
long timer1=0;

long duration5=0;
long duration4=0;
long duration3=0;
long duration2=0;
long duration1=0;

long pressing_time=0;
long not_pressing_time=0;

int n=0;
int notes[100];
int durations[100];
int delay_times[100];

void setup()
{
  Serial.begin(9600);
  pinMode(speaker,OUTPUT);
  pinMode(switch1,INPUT_PULLUP);
  pinMode(switch2,INPUT_PULLUP);
  pinMode(switch3,INPUT_PULLUP);
  pinMode(switch4,INPUT_PULLUP);
  pinMode(switch5,INPUT_PULLUP);
  pinMode(switch6,INPUT_PULLUP);
  pinMode(switch_save,INPUT_PULLUP);
}
void loop()
{
  /*Serial.print(digitalRead(switch5));
  Serial.print("\t");
  Serial.print(digitalRead(switch4));
  Serial.print("\t");
  Serial.print(digitalRead(switch3));
  Serial.print("\t");
  Serial.print(digitalRead(switch2));
  Serial.print("\t");
  Serial.println(digitalRead(switch1));*/
  
  //5
  if(digitalRead(switch5) == LOW){
    if(check5 == 0){
        timer5 = millis(); 
        press5 = true;
        pressing_time = millis();
        delay_times[n] = pressing_time - not_pressing_time;
    }
    
    check5 += 1;
    //Serial.println(digitalRead(switch5));
    tone(speaker,note5,10);  
  }else{
    if(press5 == true){
        duration5 = millis()-timer5; 
        Serial.print("Timer5 : ");
        Serial.println(duration5);   
        press5 = false;
        check5 = 0;
        notes[n] = note5;
        durations[n] = duration5;
        
        Serial.println("Yeah");
        Serial.println(notes[n]);
        Serial.println(durations[n]);
        n+=1;
        not_pressing_time=millis();
        delay(50);
    }
  }
  
  //4
  if(digitalRead(switch4) == LOW){
    if(check4 == 0){
        timer4 = millis(); 
        press4 = true;
        pressing_time = millis();
        delay_times[n] = pressing_time - not_pressing_time;
    }
    
    check4 += 1;
    tone(speaker,note4,10);  
  }else{
    if(press4 == true){
        duration4 = millis()-timer4; 
        Serial.print("Timer4 : ");
        Serial.println(millis()-timer4);   
        press4 = false;
        check4 = 0;
        notes[n] = note4;
        durations[n] = duration4;
        
        Serial.println("Yeah");
        Serial.println(notes[n]);
        Serial.println(durations[n]);
        n+=1;
        not_pressing_time=millis();
        delay(50);
    }  
  }

  //3
  if(digitalRead(switch3) == LOW){
    if(check3 == 0){
        timer3 = millis(); 
        press3 = true;
        pressing_time = millis();
        delay_times[n] = pressing_time - not_pressing_time;
    }
    
    check3 += 1;
    tone(speaker,note3,10);  
  }else{
    if(press3 == true){
        duration3 = millis()-timer3; 
        Serial.print("Timer3 : ");
        Serial.println(millis()-timer3);   
        press3 = false;
        check3 = 0;
        notes[n] = note3;
        durations[n] = duration3;
        
        Serial.println("Yeah");
        Serial.println(notes[n]);
        Serial.println(durations[n]);
        n+=1;
        not_pressing_time=millis();
        delay(50);
    }
  }

  //2
  if(digitalRead(switch2) == LOW){
    if(check2 == 0){
        timer2 = millis(); 
        press2 = true;
        pressing_time = millis();
        delay_times[n] = pressing_time - not_pressing_time;
    }
    
    check2 += 1;
    tone(speaker,note2,10);  
  }else{
    if(press2 == true){
        duration2 = millis()-timer2; 
        Serial.print("Timer2 : ");
        Serial.println(millis()-timer2);   
        press2 = false;
        check2 = 0;
        notes[n] = note2;
        durations[n] = duration2;
        
        Serial.println("Yeah");
        Serial.println(notes[n]);
        Serial.println(durations[n]);
        n+=1;
        not_pressing_time=millis();
        delay(50);
    }
  }

  //1
  if(digitalRead(switch1) == LOW){
    if(check1 == 0){
        timer1 = millis(); 
        press1 = true;
        pressing_time = millis();
        delay_times[n] = pressing_time - not_pressing_time;
    }
    
    check1 += 1;
    tone(speaker,note1,10);  
  }else{
    if(press1 == true){
        duration1 = millis()-timer1; 
        Serial.print("Timer1 : ");
        Serial.println(millis()-timer1);   
        press1 = false;
        check1 = 0;
        notes[n] = note1;
        durations[n] = duration1;
        
        Serial.println("Yeah");
        Serial.println(notes[n]);
        Serial.println(durations[n]);
        n+=1;
        not_pressing_time=millis();
        delay(50);
    }
  }

  if(digitalRead(switch_save) == LOW){
    Serial.println("Save");
    notes[n] = 0;
    durations[n] = 0;
    delay_times[0] = 0;
    int i=0;
    while(durations[i] != 0){
       Serial.print(delay_times[i]);
       Serial.print("\t");
       Serial.print(notes[i]);
       Serial.print("\t");
       Serial.println(durations[i]);

       delay(delay_times[i]);
       tone(speaker,notes[i]);
       delay(durations[i]);
       noTone(speaker); 
      
       i++;
    }

    for(int i=0;i<100;i++){
        notes[i] = 0;
        durations[i] = 0;
        delay_times[i] = 0;  
        n=0;
    }
    delay(1000); 
  }
}

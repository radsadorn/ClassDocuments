#define LED_W_R 10
#define LED_W_Y 9
#define LED_W_G 8
#define WEST_BUTTON_PIN 4
#define LED_S_R 13
#define LED_S_Y 12
#define LED_S_G 11
#define SOUTH_BUTTON_PIN 3
#define LED_WALK_R 6
#define LED_WALK_G 7
#define WALK_BUTTON_PIN 2

#define goN 0
#define EwaitN 1
#define goE 2
#define NwaitE 3
#define PholdN 4
#define PholdE 5
#define walk 6
#define Noff 7
#define Eoff 8
#define Non 9
#define Eon 10
#define swalk2N 11
#define swalk2E 12

struct State {
  unsigned long ST_Out; // 6-bit pattern to street output
  unsigned long Time; // delay in ms units
  unsigned long Next[8];
}; // next state for inputs 0,1,2,3

typedef const struct State SType;
SType FSM[13] = {
  {0x4C, 2000,  {goN,   goN,    EwaitN, EwaitN, PholdN, PholdN, EwaitN, EwaitN}}, //goN
  {0x4A,  300,  {goE,   goE,    goE,    goE,    goE,    goE,    goE,    goE   }}, //EwaitN
  {0x61, 2000,  {goE,   NwaitE, goE,    NwaitE, PholdE, PholdE, PholdE, PholdE}}, //goE
  {0x51,  300,  {goN,   goN,    goN,    goN,    goN,    goN,    goN,    goN   }}, //NwaitE
  {0x4A,  300,  {walk,  walk,   walk,   walk,   walk,   walk,   walk,   walk  }}, //PholdN
  {0x51,  300,  {walk,  walk,   walk,   walk,   walk,   walk,   walk,   walk  }}, //PholdE 
  {0x89,  800,  {walk,  Noff,   Eoff,   Noff,   walk,   Noff,   Eoff,   Noff  }}, //walk
  {0x09,  100,  {Non,   Non,    Non,    Non,    Non,    Non,    Non,    Non   }}, //Noff
  {0x09,  100,  {Eon,   Eon,    Eon,    Eon,    Eon,    Eon,    Eon,    Eon   }}, //Eoff
  {0x89,  100,  {swalk2N, swalk2N, swalk2N, swalk2N, swalk2N, swalk2N, swalk2N, swalk2N}}, // Non
  {0x89,  100,  {swalk2E, swalk2E, swalk2E, swalk2E, swalk2E, swalk2E, swalk2E, swalk2E}}, // Eon
  {0x09,  100,  {goN, goN, goN, goN, goN, goN, goN, goN}}, // swalk2N
  {0x09,  100,  {goE, goE, goE, goE, goE, goE, goE, goE}}  // swalk2E
};

unsigned long S = 0; // index to the current state
void setup() {
  Serial.begin(9600);
  pinMode(LED_W_R, OUTPUT);
  pinMode(LED_W_Y, OUTPUT);
  pinMode(LED_W_G, OUTPUT);
  pinMode(WEST_BUTTON_PIN, INPUT_PULLUP);
  pinMode(LED_S_R, OUTPUT);
  pinMode(LED_S_Y, OUTPUT);
  pinMode(LED_S_G, OUTPUT);
  pinMode(SOUTH_BUTTON_PIN, INPUT_PULLUP);
  pinMode(LED_WALK_R, OUTPUT);
  pinMode(LED_WALK_G, OUTPUT);
  pinMode(WALK_BUTTON_PIN, INPUT_PULLUP);
}

int input, input1, input2, input3;
void loop() {  
  digitalWrite(LED_S_R, !(FSM[S].ST_Out & B00000001));
  digitalWrite(LED_S_Y, !(FSM[S].ST_Out & B00000010));
  digitalWrite(LED_S_G, !(FSM[S].ST_Out & B00000100));
  digitalWrite(LED_W_R, !(FSM[S].ST_Out & B00001000));
  digitalWrite(LED_W_Y, !(FSM[S].ST_Out & B00010000));
  digitalWrite(LED_W_G, !(FSM[S].ST_Out & B00100000));
  digitalWrite(LED_WALK_R, !(FSM[S].ST_Out & B01000000));
  digitalWrite(LED_WALK_G, !(FSM[S].ST_Out & B10000000));
  
  delay(FSM[S].Time);
  
  input1 = !digitalRead(WEST_BUTTON_PIN);
  input2 = !digitalRead(SOUTH_BUTTON_PIN);
  input3 = !digitalRead(WALK_BUTTON_PIN);
  Serial.println(input3);
  input = input3 *4 + input2 * 2 + input1;
  S = FSM[S].Next[input];
}

  Serial.print(!digitalRead(SOUTH_BUTTON_PIN));
  Serial.print(" ");
  Serial.print(!digitalRead(WEST_BUTTON_PIN));
  Serial.print(" ");
  Serial.println(!digitalRead(WALK_BUTTON_PIN));

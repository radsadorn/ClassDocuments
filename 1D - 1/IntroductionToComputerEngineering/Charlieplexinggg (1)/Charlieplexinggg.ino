#define L1 9
#define L2 10
#define L3 11


void setup() {
  Serial.begin(9600);
  
}


void loop() {

//case 1
  pinMode(L1, OUTPUT);
  pinMode(L2, OUTPUT);
  pinMode(L3, INPUT);

  digitalWrite(L1, HIGH); 
  digitalWrite(L2, LOW); 
  delay(250);

//case 2
  pinMode(L1, OUTPUT);
  pinMode(L2, OUTPUT);
  pinMode(L3, INPUT);

  digitalWrite(L1, LOW); 
  digitalWrite(L2, HIGH);  
  delay(250); 

//case 3
  pinMode(L1, INPUT);
  pinMode(L2, OUTPUT);
  pinMode(L3, OUTPUT);

  digitalWrite(L2, LOW); 
  digitalWrite(L3, HIGH);  
  delay(250); 

//case 4
  pinMode(L1, INPUT);
  pinMode(L2, OUTPUT);
  pinMode(L3, OUTPUT);

  digitalWrite(L2, HIGH); 
  digitalWrite(L3, LOW);  
  delay(250); 

//case 5
  pinMode(L1, OUTPUT);
  pinMode(L2, INPUT);
  pinMode(L3, OUTPUT);

  digitalWrite(L1, LOW); 
  digitalWrite(L3, HIGH);  
  delay(250);

//case 6
  pinMode(L1, OUTPUT);
  pinMode(L2, INPUT);
  pinMode(L3, OUTPUT);

  digitalWrite(L1, HIGH); 
  digitalWrite(L3, LOW);  
  delay(250);
  
//case 5
  pinMode(L1, OUTPUT);
  pinMode(L2, INPUT);
  pinMode(L3, OUTPUT);

  digitalWrite(L1, LOW); 
  digitalWrite(L3, HIGH);  
  delay(250);
  
//case 4
  pinMode(L1, INPUT);
  pinMode(L2, OUTPUT);
  pinMode(L3, OUTPUT);

  digitalWrite(L2, HIGH); 
  digitalWrite(L3, LOW);  
  delay(250);

//case 3
  pinMode(L1, INPUT);
  pinMode(L2, OUTPUT);
  pinMode(L3, OUTPUT);

  digitalWrite(L2, LOW); 
  digitalWrite(L3, HIGH);  
  delay(250);

//case 2
  pinMode(L1, OUTPUT);
  pinMode(L2, OUTPUT);
  pinMode(L3, INPUT);

  digitalWrite(L1, LOW); 
  digitalWrite(L2, HIGH);  
  delay(250);

}

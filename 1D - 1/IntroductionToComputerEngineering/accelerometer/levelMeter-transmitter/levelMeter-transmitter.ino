int jitter(const int axis){
    delay(1);
    long sum = 0;
    for(int i=0;i<16;i++){
      sum += analogRead(axis);
    }
    return sum/16;
}

int x_raw_min = 334;
int x_raw_max = 494;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(A0,INPUT);
  pinMode(A1,INPUT);
  pinMode(A2,INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  int x_raw = jitter(A0);
  int y_raw = jitter(A1);
  int z_raw = jitter(A2);

  int a = map(x_raw,x_raw_min,x_raw_max,-90,90);
  
  Serial.print(x_raw);
  Serial.print(" ");
  Serial.println(a);
}

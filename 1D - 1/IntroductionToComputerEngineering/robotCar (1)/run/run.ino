/// Motor One ///
int enA = 5;
int in1 = 8;
int in2 = 9;

int enB = 6;
int in3 = 11;
int in4 = 12;

int ss_temp = 0;
int ss[5] = {0, 0, 0, 0, 0};
int led[] = { 13, 10, 7, 4, 3 };

float error = 0;
float last_error = 0;
float kp = 30;
float kd = 15;
float pid = 0;

float start_speed = 90;
int intersec = 0;
int BW = 770;

void check_sensor() {
  for (int i = 4; i >= 0; i--) {
    ss_temp = analogRead(i);

    if (ss_temp > BW) {
      ss[4 - i] = 1;
      digitalWrite(led[i], HIGH);
    } else {
      ss[4 - i] = 0;
      digitalWrite(led[i], LOW);
    }
  }

  if (ss[0] == 1 && ss[1] == 1 && ss[2] == 1 && ss[3] == 1 && ss[4] == 1) {
    error = 4;
  } else if (ss[0] == 1 && ss[1] == 1 && ss[2] == 1 && ss[3] == 0 && ss[4] == 0) {
    error = 3;
  } else if (ss[0] == 1 && ss[1] == 1 && ss[2] == 1 && ss[3] == 1 && ss[4] == 0) {
    error = 3;
  } else if (ss[0] == 1 && ss[1] == 1 && ss[2] == 0 && ss[3] == 1 && ss[4] == 0) {
    error = 3;
  } else if (ss[0] == 1 && ss[1] == 1 && ss[2] == 0 && ss[3] == 0 && ss[4] == 1) {
    error = 3;
  } else if (ss[0] == 0 && ss[1] == 1 && ss[2] == 0 && ss[3] == 0 && ss[4] == 0) {
    error = 1;
  } else if (ss[0] == 1 && ss[1] == 0 && ss[2] == 1 && ss[3] == 0 && ss[4] == 0) {
    error = 1;
  } else if (ss[0] == 1 && ss[1] == 1 && ss[2] == 0 && ss[3] == 0 && ss[4] == 0) {
    error = 1;
  } else if (ss[0] == 1 && ss[1] == 0 && ss[2] == 0 && ss[3] == 0 && ss[4] == 0) {
    error = 1;
  } else if (ss[0] == 0 && ss[1] == 1 && ss[2] == 1 && ss[3] == 0 && ss[4] == 0) {
    error = 1;
  }else if (ss[0] == 0 && ss[1] == 0 && ss[2] == 1 && ss[3] == 0 && ss[4] == 0) {
    error = 0;
  } else if (ss[0] == 0 && ss[1] == 1 && ss[2] == 1 && ss[3] == 1 && ss[4] == 0) {
    error = 0;
  } else if (ss[0] == 0 && ss[1] == 0 && ss[2] == 1 && ss[3] == 1 && ss[4] == 0) {
    error = -1;
  } else if (ss[0] == 0 && ss[1] == 0 && ss[2] == 0 && ss[3] == 1 && ss[4] == 0) {
    error = -1;
  } else if (ss[0] == 0 && ss[1] == 0 && ss[2] == 0 && ss[3] == 1 && ss[4] == 1) {
    error = -1;
  } else if (ss[0] == 0 && ss[1] == 0 && ss[2] == 0 && ss[3] == 0 && ss[4] == 1) {
    error = -1;
  } else if (ss[0] == 0 && ss[1] == 0 && ss[2] == 1 && ss[3] == 0 && ss[4] == 1) {
    error = 1;
  } else if (ss[0] == 0 && ss[1] == 0 && ss[2] == 1 && ss[3] == 1 && ss[4] == 1) {
    error = -3;
  } else if (ss[0] == 0 && ss[1] == 1 && ss[2] == 1 && ss[3] == 1 && ss[4] == 1) {
    error = -3;
  } else if (ss[0] == 0 && ss[1] == 1 && ss[2] == 0 && ss[3] == 1 && ss[4] == 1) {
    error = -3;
  } else if (ss[0] == 1 && ss[1] == 0 && ss[2] == 0 && ss[3] == 1 && ss[4] == 1) {
    error = -3;
  } else if (ss[0] == 0 && ss[1] == 0 && ss[2] == 0 && ss[3] == 0 && ss[4] == 0) {
    error = -4;
  }

};

void setup()
{
  Serial.begin(9600);
  /// Set all the motor control pins to outputs ///
  pinMode(enA, OUTPUT);
  pinMode(in1, OUTPUT);
  pinMode(in2, OUTPUT);
  pinMode(enB, OUTPUT);
  pinMode(in3, OUTPUT);
  pinMode(in4, OUTPUT);

  /// Sensor ///
  pinMode(0, INPUT);
  pinMode(1, INPUT);
  pinMode(2, INPUT);
  pinMode(3, INPUT);
  pinMode(4, INPUT);

  /// LED ///
  for(int i=0;i<5; ++i)
  {
    pinMode(led[i], OUTPUT);
  }
}

void loop()
{
  check_sensor();

  if (error == 4)
    intersection();
  else if (error == 3)
    TL();
  else if (error == 1)
    SL();
  else if (error == 0)
    FD();
  else if (error == -1)
    SR();
  else if (error == -3)
    TR();
  else if (error == -4)
    FD();

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
  Serial.print(analogRead(0));
  Serial.println(" ");
  delay(300);
  //  Serial.print(ss[0]);
  //  Serial.print(" ");
  //  Serial.print(ss[1]);
  //  Serial.print(" ");
  //  Serial.print(ss[2]);
  //  Serial.print(" ");
  //  Serial.print(ss[3]);
  //  Serial.print(" ");
  //  Serial.print(ss[4]);
  //  Serial.println(" ");
}

void FD() {
  digitalWrite(in1, HIGH);
  digitalWrite(in2, LOW);
  analogWrite(enA, start_speed);
  digitalWrite(in3, HIGH);
  digitalWrite(in4, LOW);
  analogWrite(enB, start_speed);
}

void BK() {
  digitalWrite(in1, LOW);
  digitalWrite(in2, HIGH);
  analogWrite(enA, start_speed);
  digitalWrite(in3, LOW);
  digitalWrite(in4, HIGH);
  analogWrite(enB, start_speed);
}

void SR() {
  digitalWrite(in3, HIGH);
  digitalWrite(in4, LOW);
  analogWrite(enA, start_speed);
  digitalWrite(in1, LOW);
  digitalWrite(in2, HIGH);
  analogWrite(enB, start_speed);
}

void SL() {
  digitalWrite(in3, LOW);
  digitalWrite(in4, HIGH);
  analogWrite(enA, start_speed);
  digitalWrite(in1, HIGH);
  digitalWrite(in2, LOW);
  analogWrite(enB, start_speed);
}

void TR() {
  AO();
  while (analogRead(1) > BW)
  {
     FD();
  };
  AO();
  while (analogRead(1) < BW)
  {
    SR();
  };
  while (analogRead(1) > BW)
  {
    SR();
  }
  SR();
}

void TL() {
  AO();
  while (analogRead(3) > BW);
  {
    FD();
  }
  AO();
  while (analogRead(3) < BW)
  {
    SL();
  }
  while (analogRead(3) > BW)
  {
    SL();
  }
  SL();
}

void AO() {
  digitalWrite(in1, LOW);
  digitalWrite(in2, LOW);
  digitalWrite(in3, LOW);
  digitalWrite(in4, LOW);
}

void circle()
{
  SR();
}

void finish()
{
  if (intersec >= 3)
    AO();
  else FD();
}

void intersection()
{
  intersec++;
  AO();
  delay(200);
  FD();
  if (intersec > 2)
  {
    TL();
  }
  else
  {
    FD();
    while (analogRead(A3) < BW);
  }
}

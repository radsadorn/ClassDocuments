#define NUM_DEGREE 4
#define PIN_PWM 3

float zeta[NUM_DEGREE];
float S[NUM_DEGREE];
uint16_t pwmDuty[NUM_DEGREE];

void setup() {
  Serail.begin(115200);
  pinMode(PIN_PWM, OUTPUT);

  for(int i = 0; i < NUM_DEGREE; ++i) {

    zeta[i] = 360.0 / NUM_DEGREE * i;
    S[i] = sin(zatas[i] * PI / 180.0);
    pwmDuty[i] = map(S[i] * 1000, -1000, 1000, 0, 255);

    Serial.print(zeta[i]);
    Serial.print(" ");
    Serial.print(S[[i]);
    Serial.print(" ");
    Serial.print(pwmDuty[i]);
    Serial.println()
    
  }
}

void loop() {
  for ( int i = 0; i < NUM_DEGREE; ++i ) {
    analogWrite(PIN_PWM, pwmDuty[i]);
    delayMicroseconds(4000);
  }

}

void setup() {
  Serial.begin(9600);
  pinMode(13, OUTPUT);

}

void loop() {
  if( Serial.available() != 0) {
    Serial.read();
    digitalWrite(13, HIGH);
    delay(250);
    digitalWrite(13, LOW);
  }

}

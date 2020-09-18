#include <SoftwareSerial.h>

SoftwareSerial qiral(10, 11);

void setup() {
  Serial.begin(115200);
  qiral.begin(57600);
}

void loop() {
  if (qiral.available())
    Serial.write(qiral.read());
}

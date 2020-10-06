#include <Wire.h>
#include <Adafruit_MCP4725.h>

#define NUM_DEGREE 4

float S[NUM_DEGREE];
uint16_t S_DAC(NUM_DEGREE];

Adafruit_MCO4725 dac;
int delay0;

#define defaultFreq 1700
#define freq0       500

void setup() {
  Serial.begin(115200);
  dac.begin(0x62);
  //dac.begin(0x64);
  //dac.begin(0x60);
  delay0 = (1000000 / freq0 - 1000000 / defaultFreq) / 4;

  Serial.print("delay0 is ");
  Serial.println(delay0);

  for (int i = 0; i < NUM_DEGREE; i++)
  {
    S[i] = sin(DEG_TO_RAD * 360.0 / NUM_DEGREE * i);
    S_DAC[i] = map(S[i] * 4000, -4000, 4000, 0, 4095);

    Serial.print(S[i]);
    Serial.print(" ");
    Serial.print(S_DAC[i]);
    Serial.println();
  }
}

void loop() {
  for ( int i = 0; i < NUM_DEGREE; ++i) {
    dac.setVoltage(S_DAC[i], false);
    delayMicrosecond(delay0);
  }

}

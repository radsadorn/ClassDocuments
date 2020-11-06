#include<Wire.h>
#include<String.h>
#include<Adafruit_MCP4725.h>
Adafruit_MCP4725 dac;

#define defaultFreq 1700
#define freq0 500
const float A[4] = {1,2,3,4};//amplitude for each baud type (00,01,10,11)
const uint16_t S_DAC[4] = {500,1000,500,0};//generate sine wave with 12bits (max at 5V)
int delay0;
char inData[20];
void setup() {
  dac.begin(0x64);
  delay0 = (1000000 / freq0 - 1000000 / defaultFreq) / 4;
  Serial.begin(115200);
  Serial.flush();
}

void loop() {
  if (Serial.available() > 0) {
    int counter = 0;
    String inp = Serial.readString();
    inp += "\n";
    for(int i=0;i<inp.length();i++){
        inData[i]=inp[i];
        counter++;
      }
    //Serial.println(inData);
    for (int i=0;i<counter-1;i++) {//send data
      char preShifted = inData[i];
      for (int k = 7; k > 0; k -= 2) {//send 8 bits from LSB tp MSB
        int tmp = inData[i] & 3;
        for (int sl=0;sl<5;sl++) {//5 cycles/baud
          for (int s=0;s<4;s++) {//4 sample/cycle
//            Serial.print(i);
//            Serial.print("\tchar ");
//            Serial.println(preShifted);
//            Serial.print("\tindex ");
//            Serial.println(tmp);
            dac.setVoltage(A[tmp]*S_DAC[s], false);//modify amplitude
            delayMicroseconds(delay0);
          }
        }
        inData[i]>>=2;
      }
    }
    dac.setVoltage(0,false);  
  }
}

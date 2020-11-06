#include<Wire.h>
#include<Adafruit_MCP4725.h>
#include<Adafruit_ADS1015.h>

#define defaultFreq 1700
#define f0 500
#define f1 800
#define f2 1100
#define f3 1400
int delay0, delay1, delay2, delay3;

const uint16_t S_DAC[4] = {1000, 2000, 1000, 0};  // 10 bits input
Adafruit_MCP4725 dac;

void setup()
{
  dac.begin(0x64);//A2
  delay0 = (1000000 / f0 - 1000000 / defaultFreq) / 4;
  delay1 = (1000000 / f1 - 1000000 / defaultFreq) / 4;
  delay2 = (1000000 / f2 - 1000000 / defaultFreq) / 4;
  delay3 = (1000000 / f3 - 1000000 / defaultFreq) / 4;
  Serial.begin(115200);
  Serial.flush();
}

char inData[30];
void loop()
{
  if (Serial.available() > 0)
  {
    int counter = 0;
    String inp = Serial.readString();
    inp += "\n";
    for(int i=0;i<inp.length();i++)
    {
      inData[i] = inp[i];
      counter++;  
    }
//    Serial.println(inp);
//    Serial.println(counter);
    for (int i=0;i<counter-1;i++) //send data
    {
      //char preShifted = inData[i];
      
      for (int k = 7; k > 0; k -= 2) //send 8 bits from LSB tp MSB
      {
        int tmp = inData[i] & 3;
      int useDelay,cyc;  
        if(tmp == 0)
        {
          //Serial.println("00");
          cyc = 5;
          useDelay = delay0;   
        }
        else if(tmp == 1)
        {
          //Serial.println("01");
          cyc = 8;
          useDelay = delay1;  
        }
        else if(tmp == 2)
        {
          //Serial.println("10");
          cyc = 11;
          useDelay = delay2; 
        }
        else
        {
          //Serial.println("11");
          cyc = 14;
          useDelay = delay3;  
        }
        for (int sl=0;sl<cyc;sl++)
        {
          for (int s=0;s<4;s++) //4 sample/cycle
          {
            dac.setVoltage(S_DAC[s], false);//modify amplitude
            delayMicroseconds(useDelay);
          }
        }
        inData[i]>>=2;
      }
    }
    
    dac.setVoltage(0, false);
  }

}

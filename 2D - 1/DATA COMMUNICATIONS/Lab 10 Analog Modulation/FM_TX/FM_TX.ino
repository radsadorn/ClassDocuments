#include<Wire.h>
#include<Adafruit_MCP4725.h>
#include<Adafruit_ADS1015.h>

#define defaultFreq 1700
#define f0 100
#define f1 600
#define f2 1100
#define f3 1650
int delay0, delay1, delay2, delay3;

const uint16_t S_DAC[4] = {0, 1000, 2000, 1000};  // 10 bits input
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

char inData[15];
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

    for (int s = 0; s < 4; s++) //4 sample/cycle
    {
       dac.setVoltage(1000, false);//modify amplitude
       delayMicroseconds(delay0);
    }
    for (int i = 0; i < counter - 1; i++) //send data
    {

      for (int k = 7; k > 0; k -= 2) //send 8 bits from LSB tp MSB
      {
        int tmp = inData[i] & 3;
        int useDelay,cyc;  
        if(tmp == 0)
        {
          cyc = 1;
          useDelay = delay0;   
        }
        else if(tmp == 1)
        {
          cyc = 6;
          useDelay = delay1;  
        }
        else if(tmp == 2)
        {
          cyc = 11;
          useDelay = delay2; 
        }
        else
        {
          cyc = 16;
          useDelay = delay3;  
        }
        
        for (int sl = 0; sl < cyc; sl++)
        {
          for (int s = 0; s < 4; s++) //4 sample/cycle
          {
            dac.setVoltage(S_DAC[s], false);//modify amplitude
            delayMicroseconds(useDelay);
          }
        }
        inData[i]>>=2;
      }
    }

    for (int s = 0; s < 4; s++) //4 sample/cycle
    {
       dac.setVoltage(1000, false);//modify amplitude
       delayMicroseconds(delay0);
    }
    
    dac.setVoltage(0, false);
  }

}

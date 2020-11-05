#define defaultFreq 1700 //DAC speed (Hz)

#define freq0 500

const float A[4] = {};

int delay0;

#define a0min 160
#define a0max 350
#define a1min 400
#define a1max 600
#define a2min 600
#define a2max 800
#define a3min 800
#define a3max 1050

#define r_slope 100

int sum = 0;
int max = 0;
int prev = 0;
bool check = false;
int output = -1;
int count = 0;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(115200);
  Serial.flush();
}

uint16_t last = 0;
uint16_t data = 0;
uint16_t bitCheck = 0;

void loop() {
  // put your main code here, to run repeatedly:
  int tmp = analogRead(A3);
  if ( tmp - prev > r_slope && check == false) // check rising edge
  {
    max = 0;
    check = true;
  }
  if ( tmp > max) // find max amplitude
  {
    max = tmp;
  }
  if ( max - tmp > r_slope ) // falling signal
  {
    if (check == true) {
      if ( a0min < max and max < a0max ) {
        Serial.print("0 0 ");
        last = 0;
        count++;
      }
      else if ( a1min < max and max < a1max ) {
        Serial.print("0 1 ");
        last = 1;
        count++;
      }
      else if ( a2min < max and max < a2max ) {
        Serial.print("1 0 ");
        last = 2;
        count++;
      }
      else if ( a3min < max and max < a3max ) {
        Serial.print("1 1 ");
        last = 3;
        count++;
      }

      if ( count == 5 ) // 5 cycle / baud
      {
        data |= last << (bitCheck * 2);
        bitCheck++;
        if (bitCheck == 4) {
          Serial.print((char)data);
          data = 0;
          bitCheck = 0;
        }
        Serial.println();
        count = 0;
      }
    }
    check = false;
  }
  prev = tmp;
}

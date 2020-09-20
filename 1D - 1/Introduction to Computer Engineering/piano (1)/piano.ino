#include <Arduino.h>
#include <Vector.h>

int piano[5] = {2, 3, 4, 5, 6};
int note[] = { 261, 293, 329, 349, 392 };
Vector <int> record;

void setup() {
  Serial.begin(9600);
  for(int i=0; i<5; ++i)
    pinMode(piano[i],INPUT_PULLUP);
  
}

void loop() {
  int storage_array[ELEMENT_COUNT_MAX];
  Vector<int> vector;
  vector.setStorage(storage_array);
  Serial << "vector.max_size(): " << vector.max_size() << endl;
  Serial << "vector.size(): " << vector.size() << endl;
  Serial << "vector:" << endl;
  Serial << vector << endl;
  delay(1000);

  vector.push_back(10);
  vector.push_back(8);
  vector.push_back(7);
  Serial << "vector.max_size(): " << vector.max_size() << endl;
  Serial << "vector.size(): " << vector.size() << endl;
  Serial << "vector:" << endl;
  Serial << vector << endl;
  vector.remove(0);
  Serial << "vector.remove(0):" << endl;
  Serial << vector << endl;
  vector.remove(1);
  Serial << "vector.remove(1):" << endl;
  Serial << vector << endl;
  delay(1000);
  /*record.push_back(1);
  record.push_back(1);
  record.push_back(1);
  Serial.println(record.size());
  Serial.println(record[0]);
  if(digitalRead(piano[0]) == 1) {
    record.push_back(note[0]);
    tone(piano[0],note[0]);
  }
  if(digitalRead(piano[1]) == 1) {
    record.push_back(note[1]);
    tone(piano[1],note[1]);
  }
  if(digitalRead(piano[2]) == 1) {
    record.push_back(note[2]);
    tone(piano[2],note[2]);
  }
  if(digitalRead(piano[3]) == 1) {
    record.push_back(note[3]);
    tone(piano[3],note[3]);
  }
  if(digitalRead(piano[4]) == 1) {
    record.push_back(note[4]);
    tone(piano[4],note[4]);
  } */

}

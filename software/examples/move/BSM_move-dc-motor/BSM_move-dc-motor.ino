#include "BSM_System.h"

void setup()
{
  pinMode(HBRIDGE_IN_01, OUTPUT);
  pinMode(HBRIDGE_IN_02, OUTPUT);
  pinMode(HBRIDGE_ENABLE, OUTPUT);
  pinMode(BUTTON_01, INPUT_PULLUP);
}

void loop()
{
  int speed = analogRead(POTENTIOMETER_01) / 4;
  boolean reverse = digitalRead(BUTTON_01);
  setMotor(speed, reverse);
}

void setMotor(int speed, boolean reverse)
{
  analogWrite(HBRIDGE_ENABLE, speed);
  digitalWrite(HBRIDGE_IN_01, ! reverse);
  digitalWrite(HBRIDGE_IN_02, reverse);
}

/* 
	This sketch demonstrates the H-Bridge featured on Blink Sense Move. It allows driving DC-Motors for-and backwards. Make connections between the used pins (HBRIDGE_IN_01, HBRIDGE_IN_02, HBRIDGE_ENABLE, BUT_01, POT_01) and their corresponding Teensy pins.
  Enjoy.
*/

/* BSM_System.h includes the Blink Sense Move library */
#include "BSM_System.h"

void setup() {
  /* define the used pins as outputs */
  pinMode(HBRIDGE_IN_01, OUTPUT);
  pinMode(HBRIDGE_IN_02, OUTPUT);
  pinMode(HBRIDGE_ENABLE, OUTPUT);
  pinMode(BUTTON_01, INPUT_PULLUP);
}

/* set the speed and direction of the dc motor */
void loop() {
  int speed = analogRead(POTENTIOMETER_01) / 4;
  boolean reverse = digitalRead(BUTTON_01);
  setMotor(speed, reverse);
}

/* This function sets the speed and direction */
void setMotor(int speed, boolean reverse) {
  analogWrite(HBRIDGE_ENABLE, speed);
  digitalWrite(HBRIDGE_IN_01, ! reverse);
  digitalWrite(HBRIDGE_IN_02, reverse);
}

/* 
	This sketch demonstrates the Mosfet featured on Blink Sense Move. It allows driving high DC load e.g. a Solonoide. Make connections between the used pins (MOSFET_01 or MOSFET_02) and their corresponding Teensy pins.
  Enjoy.
*/

/* BSM_System.h includes the Blink Sense Move library */
#include "BlinkSenseMove.h"

void setup() {
  pinMode(MOSFET_01, OUTPUT);
}

void loop() {
  digitalWrite(MOSFET_01, LOW);
  delay(1000);
  digitalWrite(MOSFET_01, HIGH);
  delay(1000);
}

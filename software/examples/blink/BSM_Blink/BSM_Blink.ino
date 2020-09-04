/*
	This sketch demonstrates blinking the onboard LEDs of Blink Sense Move.
	Add jumpers between pins 1 and 12 and the corresponding LED_0X pin.
	Enjoy.
*/


//Include this into all Blink Sense Move Sketches if you want to use the predifined Pins. You can change these mapping
#include "BSM_System.h"

//Overwrite the predefined pins with another define in the sketch, like shown below. Uncomment and see what happens.
//#define LED_01 13


// the setup routine runs once when you press reset:
void setup() {
  // initialize the digital pin as an output.
  pinMode(LED_01, OUTPUT);
  pinMode(LED_02, OUTPUT);

}

// the loop routine runs over and over again forever:
void loop() {
  digitalWrite(LED_01, HIGH);// turn Pin LED_01 on (HIGH is the voltage level)
  digitalWrite(LED_02, LOW); // turn Pin LED_02 off
  delay(1000);               // wait for a second
  digitalWrite(LED_01, LOW); // turn the LED off by making the voltage LOW
  digitalWrite(LED_02, HIGH);// turn Pin LED_02 on
  delay(1000);               // wait for a second
}

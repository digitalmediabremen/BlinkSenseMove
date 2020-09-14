/*
  This sketch demonstrates the usage of the on Board potentiometers of Blink Sense Move.
  Turning the potentiometers controls the brightness of the corresponding LED.
  Enjoy.
*/

/*Include this into all Blink Sense Move Sketches if you want to use the predifined Pins. You can change these mapping */
#include "BSM_System.h"

/* As the standart LED pins dont support hardware PWM, this overwrites the pin definitions. Use two female to female jumpers
to connect the teensy pins written below (3 and 4) to LED_01 and LED_02. Connect POT_01 and POT_02 to their corresponding Teensy
pins with jumpers. */ 
#define LED_01 3
#define LED_02 4

void setup() {
  /* Set analog Resoltion to 12bit */
  analogWriteResolution(12);
  analogReadResolution(12);

  /* Setup LED pins as Outputs */
  pinMode(LED_01, OUTPUT);
  pinMode(LED_02, OUTPUT);
}

void loop() {
  /* Save the read values of the on board Potentiometers into two integer variables. */
  int pot1 = analogRead(POTENTIOMETER_01);
  int pot2 = analogRead(POTENTIOMETER_02);

  /* write these analog values to the corresponding LED pins.*/
  analogWrite(LED_01, pot1);
  analogWrite(LED_02, pot2);
}

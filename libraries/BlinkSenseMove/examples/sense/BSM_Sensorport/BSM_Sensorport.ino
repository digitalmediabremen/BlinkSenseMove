/*
  This sketch demonstrates the usage of the BSM SENSORPORT. Attach a resistance based Sensor of your choice to the SENSORPORT, whilst paying
  attention to the polarisation of the port (Written on the backside of the board.). Next, add a jumper to JP3. Decide for
  one of the shown resitance values. These act as a voltage divider.
  Add a jumper between Pin 20 on the Teeny and the SENSORPORT. Enjoy.
 */

/* Include this into all Blink Sense Move Sketches if you want to use the predifined Pins. You can change these mapping*/
#include "BlinkSenseMove.h"

/* As the Pin for LED_01 does not have the capability of PWM we will overwrite the Pin, as well as using a female to female
jumper between the LED_01 and Pin 03 of the Teensy */
#define LED_01 3

void setup()
{
  /* Setup the LED_01 Pin as a digital Output */
  pinMode(LED_01, OUTPUT);
}

void loop()
{
  /* Read the Value of the SENSORPORT and save it to the integer variable fadeAmount */
  int fadeAmount = analogRead(SENSORPORT);
  /* Write fadeAmount to the LED_01 Pin, fading in and out LED_01 based on the value measured.*/
  analogWrite(LED_01, fadeAmount); 
}

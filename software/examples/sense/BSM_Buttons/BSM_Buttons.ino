/*
  This sketch demonstrates the usage of the Buttons on the Blink Sense Move Board with the help of the Bounce2 library (https://github.com/thomasfredericks/Bounce2)
  Connect LED_01, LED_02, BUT_01 & BUT_02 with their corresponding pins on the teensy using jumpers. The sketch will turn on and off LED_01 and LED_02 if the
  corresponding Button is pressed.
  Enjoy. 
*/

//This line includes the Bounce2 library which cleans up button inputs
#include <Bounce2.h>

//Include this into all Blink Sense Move Sketches if you want to use the predifined Pins. You can change these mapping
#include "BSM_System.h"

// Instantiate a Bounce object, one for each Button
Bounce debouncer1 = Bounce();
Bounce debouncer2 = Bounce();

void setup() {

  // Setup the first button with an internal pull-up :
  pinMode(BUTTON_01, INPUT_PULLUP);
  // After setting up the button, setup the Bounce instance :
  debouncer1.attach(BUTTON_01);
  debouncer1.interval(5); // interval in ms. During this interval the teensy wont accept any other inputs on the corresponding pins.

  // Setup the second button with an internal pull-up :
  pinMode(BUTTON_02, INPUT_PULLUP);
  // After setting up the button, setup the Bounce instance :
  debouncer2.attach(BUTTON_02);
  debouncer2.interval(5); // interval in ms

  //Setup the LED_0X pins as outputs
  pinMode(LED_01, OUTPUT);
  pinMode(LED_02, OUTPUT);
}


void loop() {
  // Update the Bounce instances :
  debouncer1.update();
  debouncer2.update();

  // Get the updated value :
  int value1 = debouncer1.read();
  int value2 = debouncer2.read();

  // Turn on the LED_0X if either button is pressed :
  if ( value1 == LOW) {
    digitalWrite(LED_01, LOW );
  }
  else {
    digitalWrite(LED_01, HIGH );
  }

  if ( value2 == LOW) {
    digitalWrite(LED_02, LOW );
  }
  else {
    digitalWrite(LED_02 , HIGH );
  }

}

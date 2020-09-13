/* 	This sketch demonstrates the usage of Stepper Motors with Blink Sense Move with the help of a DRV8825 or compatible Driver. To use the driver connect the used pins with the corresponding Teensy pins. The stepper drivers can be configured (microstepping etc.) via the STP_CONF patchbay. JP_01 choses either the external power or the internal 5v. Take care, the internal voltage conversion only supplies up to 1.5A. 
Enjoy. */

/* Include these libraries. Bounce2 debounces the button, BSM_System.h includes the Blink Sense Move library, AccelStepper is the library used for the stepper. */
#include <AccelStepper.h>
#include <Bounce2.h>
#include "BSM_System.h"

/* Define some steppers and the pins the will use */
AccelStepper stepper1(AccelStepper::FULL2WIRE, STEPPER_STP, STEPPER_DIR);
Bounce debouncer = Bounce();

int target = 0;

/* sets up the motor, the button and the digital pins. */
void setup() {
  stepper1.setMaxSpeed(200.0);
  stepper1.setAcceleration(100.0);
  stepper1.moveTo(24);

  pinMode(BUTTON_01, INPUT_PULLUP);
  debouncer.attach(BUTTON_01);
  debouncer.interval(25);

  pinMode(STEPPER_RST, OUTPUT);
  pinMode(STEPPER_SLP, OUTPUT);
  pinMode(STEPPER_EN, OUTPUT);
  digitalWrite(STEPPER_RST, HIGH);
  digitalWrite(STEPPER_SLP, HIGH);
  digitalWrite(STEPPER_EN, LOW);
}

/* if the button is pushed, the stepper moves 200 steps.*/
void loop() {
  debouncer.update();
  if (debouncer.fell() && !stepper1.isRunning()) {
    stepper1.moveTo(target);
    stepper1.run();
    if (stepper1.distanceToGo() == 0) {
      target = target + 200;
    }
  }
}

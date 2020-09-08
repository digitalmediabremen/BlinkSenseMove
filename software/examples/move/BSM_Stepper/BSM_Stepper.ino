// MultiStepper.pde
// -*- mode: C++ -*-
//
// Shows how to multiple simultaneous steppers
// Runs one stepper forwards and backwards, accelerating and decelerating
// at the limits. Runs other steppers at the same time
//
// Copyright (C) 2009 Mike McCauley
// $Id: MultiStepper.pde,v 1.1 2011/01/05 01:51:01 mikem Exp mikem $

#include <AccelStepper.h>
#include <Bounce2.h>
#include "BSM_System.h"

// Define some steppers and the pins the will use
AccelStepper stepper1(AccelStepper::FULL2WIRE, STEPPER_STP, STEPPER_DIR);
Bounce debouncer = Bounce();

int target = 0;

void setup()
{
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

void loop()
{
  debouncer.update();
  if (debouncer.fell() && !stepper1.isRunning()) {
    stepper1.moveTo(target);
    stepper1.run();
    if (stepper1.distanceToGo() == 0) {
      target = target + 200;
    }


  }

}

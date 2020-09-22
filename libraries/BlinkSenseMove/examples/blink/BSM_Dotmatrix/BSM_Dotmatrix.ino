/*
  This sketch demonstrates displaying text on a MAX7219 driven 8x8 LED Dot Matrix display with the Blink Sense Move board.
  Connect the corresponding teensy pins via jumpers, and add some power to the board. The text should scroll saying "Hello, BlinkSenseMove"
  This sketch uses the MD_Parola and MD_MAX72xx libraries.
*/
/* Tese Libs are needed to run this example, add them via sketch -> include library -> manage Libraries*/
#include <MD_Parola.h>
#include <MD_MAX72xx.h>
#include <SPI.h>
#include "BlinkSenseMove.h"

/* This defines the Type of Display connected. MD_MAX72XX::GENERIC_HW works with the Displays fitting onto Blink Sense Move*/
#define HARDWARE_TYPE MD_MAX72XX::GENERIC_HW

/* Increase this number if you want to daisy chain multiple displays. MAXDEVICES = number of displays*/
#define MAX_DEVICES 1

/* These pins are used for the Serial connection to the Display*/
#define CLK_PIN   DISPLAY_CLK
#define DATA_PIN  DISPLAY_DIN
#define CS_PIN    DISPLAY_CS

/* Initializing the Display with the Serial pins*/
MD_Parola P = MD_Parola(HARDWARE_TYPE, DATA_PIN, CLK_PIN, CS_PIN, MAX_DEVICES);

void setup(void)
{
  /* tell the display to begin*/
  P.begin();
  /* what text will be printed?, define alignment, speed, pause, and in and out effects*/
  P.displayText("Hello, BlinkSenseMove", PA_RIGHT, 300, 0, PA_SCROLL_LEFT, PA_SCROLL_LEFT);
}

void loop(void)
{
  /* Starts the animation*/
  P.displayAnimate();

  /* If the animation is finished, reset the display*/
  if (P.displayAnimate()) {
    P.displayReset();

  }
}

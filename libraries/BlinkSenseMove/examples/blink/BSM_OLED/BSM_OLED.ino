/*
 This sektch demonstrates the use of OLEDs based on SSD1306 drivers
 with the Blink Sense Move Board.
 To use the OLED connect the corresponding pins for the display (DISPLAY_CLK, DISPLAY_CS, DISPLAY_DC, DISPLAY_DIN and DISPLAY_RES) to their Teensy pins using jumpers.
*/

/* include the libraries used in this sketch.*/
#include <SPI.h>
#include <Wire.h>
#include <Adafruit_GFX.h>
#include <Adafruit_SSD1306.h>
#include "BlinkSenseMove.h"

/* defines screen width and hight of the display in pixels*/
#define SCREEN_WIDTH 128
#define SCREEN_HEIGHT 64

/* initiates the display with the corresponding pins.*/
Adafruit_SSD1306 display(SCREEN_WIDTH, SCREEN_HEIGHT,
  DISPLAY_DIN, DISPLAY_CLK, DISPLAY_DC, DISPLAY_RES, DISPLAY_CS);

void setup() {
  Serial.begin(9600);

  /* SSD1306_SWITCHCAPVCC = generate display voltage from 3.3V internally */
  if(!display.begin(SSD1306_SWITCHCAPVCC)) {
    Serial.println(F("SSD1306 allocation failed"));
    /*Don't proceed, loop forever */
    for(;;); 
  }

  /* Clear the buffer */
  display.clearDisplay();

  /* Show the display buffer on the screen. You MUST call display() after
  drawing commands to make them visible on screen! */
  display.display();
  delay(2000);
  /* display.display() is NOT necessary after every single drawing command,
  unless that's what you want...rather, you can batch up a bunch of
  drawing operations and then update the screen all at once by calling
  display.display(). These examples demonstrate both approaches... */

  testdrawrect();      /* Draw rectangles (outlines)*/

  testfillrect();      /* Draw rectangles (filled)*/

  testdrawstyles();    /* Draw 'stylized' characters*/

}

void loop() {
}


void testdrawrect(void) {
  display.clearDisplay();

  for(int16_t i=0; i<display.height()/2; i+=2) {
    display.drawRect(i, i, display.width()-2*i, display.height()-2*i, SSD1306_WHITE);
    display.display(); /* Update screen with each newly-drawn rectangle*/
    delay(1);
  }

  delay(2000);
}

void testfillrect(void) {
  display.clearDisplay();

  for(int16_t i=0; i<display.height()/2; i+=3) {
    /* The INVERSE color is used so rectangles alternate white/black*/
    display.fillRect(i, i, display.width()-i*2, display.height()-i*2, SSD1306_INVERSE);
    display.display(); /* Update screen with each newly-drawn rectangle*/
    delay(1);
  }

  delay(2000);
}

void testdrawstyles(void) {
  display.clearDisplay();

  display.setTextSize(2);             /* Textsize *2*/
  display.setTextColor(SSD1306_WHITE);        /* Draw white text*/
  display.setCursor(0,0);             /* Start at top-left corner*/
  display.println(F("Hello, Blink Sense Move"));

  display.display();
  delay(2000);
}

/* 
	This sketch demonstrates the audio output of Blink Sense Move. This audio output section is called betteraudioout and was designed by Felix Fisgus. The audio output supports either active speakers (bluetooth speakers etc.) or small passive speakers. Pressing BUTTON_01 on the board plays the Intel audio logo.
  To use the sketch make connections between Teensy Pin 02 and BUT_01 and Teensy Pin 04 and AUDIO_OUT.
	This sketch was derived from the Arduino melody example sketch.
  Enjoy.
*/

/* Include these libraries. Bounce2 debounces the button, BSM_System.h includes the Blink Sense Move library, pitches.h includes the definitions of the pitches of certain tones. */
#include <Bounce2.h>
#include "BSM_System.h"
#include "pitches.h"


/* Overwrite Pin 04 to act as a tone output, as it supports PWM */
#define TONEPIN 4

Bounce debounce = Bounce();

/* this array saves the notes in the melody: */
int melody[] = {NOTE_D3, 0, NOTE_D3, NOTE_G3, NOTE_D3, NOTE_A3};

/* this array defines the note duration of the tones in the melody. note durations: 4 = quarter note, 8 = eighth note, etc.: */
int noteDurations[] = {4, 4, 8, 8, 8, 8};

void setup() {
  /* put your setup code here, to run once: */
  pinMode(TONEPIN, OUTPUT);
  pinMode(BUTTON_01, INPUT_PULLUP);
  debounce.attach(BUTTON_01);
  debounce.interval(25);
}

void loop() {
  debounce.update();
  if (debounce.fell()) {
    playMelody(TONEPIN);
  }

}

/* This function is responsible to play the melody.*/
void playMelody(int pin) {
  for (int thisNote = 0; thisNote < 6; thisNote++) {

    /* to calculate the note duration, take one second divided by the note type.
    e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.*/
    int noteDuration = 1000 / noteDurations[thisNote];
    tone(pin, melody[thisNote], noteDuration);

    /* to distinguish the notes, set a minimum time between them.
    the note's duration + 30% seems to work well: */
    int pauseBetweenNotes = noteDuration * 1.30;
    delay(pauseBetweenNotes);
    /* stop the tone playing: */
    noTone(pin);
    if (thisNote == 6) {
      thisNote = 0;
    }
  }
}

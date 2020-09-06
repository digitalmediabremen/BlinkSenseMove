#include <Bounce2.h>
#include "BSM_System.h"
#include "pitches.h"

#define TONEPIN 4

Bounce debounce = Bounce();

// notes in the melody:
int melody[] = {
  NOTE_D3, 0, NOTE_D3, NOTE_G3, NOTE_D3, NOTE_A3
};

// note durations: 4 = quarter note, 8 = eighth note, etc.:
int noteDurations[] = {
  4, 4, 8, 8, 8, 8
};


void setup() {
  // put your setup code here, to run once:
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

void playMelody(int pin) {
  for (int thisNote = 0; thisNote < 6; thisNote++) {

    // to calculate the note duration, take one second divided by the note type.
    //e.g. quarter note = 1000 / 4, eighth note = 1000/8, etc.
    int noteDuration = 1000 / noteDurations[thisNote];
    tone(pin, melody[thisNote], noteDuration);

    // to distinguish the notes, set a minimum time between them.
    // the note's duration + 30% seems to work well:
    int pauseBetweenNotes = noteDuration * 1.30;
    delay(pauseBetweenNotes);
    // stop the tone playing:
    noTone(pin);
    if (thisNote == 6) {
      thisNote = 0;
    }

  }


}

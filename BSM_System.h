#pragma once

//Buttons
#define BUTTON_01 2
#define BUTTON_02 3

//H-Bridge, first half
#define HBRIDGE_ENABLE 4
#define HBRIDGE_IN_01 5
#define HBRIDGE_IN_02 6

//Display, Dotmatrix
#define DISPLAY_DIN 7
#define DISPLAY_CLK 8
#define DISPLAY_CS 9

//Display, OLED, Uncomment the following lines
/*
#define DISPLAY_DC 10
#define DISPLAY_RES 11
*/

//LEDs
#define LED_01 12
#define LED_02 1

//Stepper driver 
#define STEPPER_DIR 13 //Also switches on board LED of Teensy
#define STEPPER_STP 14
#define STEPPER_SLP 15
#define STEPPER_RST 16
#define STEPPER_EN 17

//Potentiometers
#define POTENTIOMETER_01 18
#define POTENTIOMETER_02 19

//Sensorport
#define SENSORPORT 20

//Opamp
#define OPAMP_OUT 21

//Mosfets
#define MOSFET_01 22
#define MOSFET_02 23

const uint8_t pin_pot_a = A6;
const uint8_t pin_pot_b = A7;
const uint8_t pin_sw_a = 3;
const uint8_t pin_sw_b = 2;
const uint8_t pin_led_a = 6;
const uint8_t pin_led_b = 5;
const uint8_t pin_led_status = 13;

const uint8_t pin_aux_a = A0;
const uint8_t pin_aux_b = 9;
const uint8_t pin_aux_c = 10;

const uint8_t pin_rx = 0;
const uint8_t pin_tx = 1;

const uint8_t pin_steppers_en = 4;

const uint8_t pin_stepper_a_dir = 7;
const uint8_t pin_stepper_a_step = 8;

const uint8_t pin_stepper_b_dir = 11;
const uint8_t pin_stepper_b_step = 12;

const uint8_t pin_piezos_gain0 = A1;
const uint8_t pin_piezos_gain1 = A2;
const uint8_t pin_piezos_en = A3;

const uint8_t pin_sda = A4;
const uint8_t pin_scl = A5;

Mcp4728<TwoWire> dac = Mcp4728<TwoWire>(Wire, 0);  // DAC for channels 0-3 (1-4)

void pins_init() {
  pinMode(pin_led_a, OUTPUT);
  pinMode(pin_led_b, OUTPUT);
  pinMode(pin_led_status, OUTPUT);

  pinMode(pin_sw_a, INPUT_PULLUP);
  pinMode(pin_sw_b, INPUT_PULLUP);

  pinMode(pin_piezos_gain0, OUTPUT);
  pinMode(pin_piezos_gain1, OUTPUT);
  pinMode(pin_piezos_en, OUTPUT);

  digitalWrite(pin_piezos_gain0, HIGH);
  digitalWrite(pin_piezos_gain1, HIGH);
  digitalWrite(pin_piezos_en, LOW);
}


void dac_init() {
  dac.begin();
  // dac_print_status(dac);

  for (uint8_t i = 0 ; i < 4; i++) {
    dac.setGain(i, 0);  // x1
    dac.setVref(i, 1);  // internal voltage reference
    dac.analogWrite(i, 0);
  }
}


void system_init() {
  Wire.begin();
  Wire.setClock(1000000);   // fast I2C

  pins_init();
  dac_init();
}

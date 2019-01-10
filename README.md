# DM_PCB

A general purpose PCB/Toolkit for easy usage of sensors and actuators

# Hardware

maximum PCB dimensions: 100×100mm ( = 1,76/10pcs @[jlcpcb](http://jlcpcb.com) )

## MCU-Ideas

( supported by Arduino IDE )

1. ATmega328p (AVR, 20 MHz, 8-bit, @as_used_in(Arduino UNO)), pP 1.60€, [Datasheet](http://www.microchip.com/mymicrochip/filehandler.aspx?ddocname=en589666)
2. NXP MK20DX256 (ARM Cortex-M4, 96 MHz, 32-bit, @as_used_in(Teensy 3.2) ), pP 9.00€, [Datasheet](https://www.pjrc.com/teensy/K20P64M72SF1.pdf)
3. STM32F446RE (ARM Cortex-M4, 180 MHz, 32-bit, @as_used_in(Nucleo F446RE + Arduino for STM32)), pP 9.00€, [Datasheet](http://www.st.com/content/ccc/resource/technical/document/datasheet/65/cb/75/50/53/d6/48/24/DM00141306.pdf/files/DM00141306.pdf/jcr:content/translations/en.DM00141306.pdf)

### Boards

1) Teensy LC (approx 13 Euro) | Teensy 3.2 (Pro: Fast, Audiocapabilitys. Contra: Not super cheap)
2) Arduino Nano (Pro: Compatibilty, cheap. Contra: CH340-Driver issue with cheap Variations)

## Ideas for Features

1) Felix´ Audio Output board
2) 1 or 2 Mosfets with Diodes
3) 12v Input with good Quality Voltage converter
4) Stepper Motor Driver
5) H-Bridge
6) 7-Segment-Display
7) Add-On-Interface for stuff like Encoders or Analogsticks and similiar stuff.
8) motor board *only* ( H-bridge+mosfet, stepper-driver, PWM for high-current/loads )
9) Making the wiring Modular
10) Mic- and Piezoamp, maybe also a switchable direct out to Felix Audio out.
11) frequency devider / counter ic
12) Making it modular (plugging and using boards together, with one microcontroller)

## Bill of materials
- 3.5 mm jack
- AKL
- 595 (SMD?)
- IRF530 (SMD)
- 7seg/4Digit
- spannungsregler MC7805CD2TG (SMD) (1A 5V für teensy und externe komponenten)

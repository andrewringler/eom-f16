/*
    Demonstatres use of various custom functions to use with Neopiels:
    flashing, fades, simulated breathing

    NeoPixel Setup
    +V connection to +5V - if > 15 pixels, use external regulated 5 vdc power supply
      (tie grounds of this and Arduino together)
    GND connection to ground
    IN connected to Arduino Digital Pin 6

    FastLED library:
      https://github.com/FastLED
    Some FastLED Reference pages:
      https://github.com/FastLED/FastLED/wiki/Overview
      https://github.com/FastLED/FastLED/wiki/Basic-usage
      https://github.com/FastLED/FastLED/wiki/Pixel-reference
      https://github.com/FastLED/FastLED/wiki/Controlling-leds

    Fred Wolflink 10/20/16 @ MassArt
*/

// libraries to include
#include "FastLED.h"

// How many leds in your strip?
#define NUM_LEDS 13

// For LED chips like Neopixels, which have a data line, ground, and power, you just
// need to define DATA_PIN.
#define DATA_PIN 8

// Define the array of LEDs and call it leds[]
CRGB leds[NUM_LEDS];


void setup() {
  FastLED.addLeds<NEOPIXEL, DATA_PIN>(leds, NUM_LEDS);
}

void loop() {
  allOnRGBBr(100, 0, 100, 150);   // turn all Neopixels magenta
  delay(1000);
  allOn(0, 0, 0);                 // turn all Neopixels off (black)
  delay(1000);
  UpDown(20, 20, 1000, 500, 100, 0, 0, 0, 0, 100);  // up red, down blue
  delay(1000);
  breathe(10, 5, 200, 200, 200, 0);    // take a yellow breath
  delay(1000);
  flash(4, 50, 100, 0, 100, 0, 100);   // fast flash 4 times green
  delay(1000);
}


/*---------------------------------------------------------------------
   User Defined Functions - Fred Wolflink 10/20/16 @ MassArt
   Note: all of these use the NUM_LEDS global variable defined above
  --------------------------------------------------------------------*/

/*
  allOn() takes 3 arguments: R, G, B (0-255)
  Note: it uses NUM_LEDS global variable defined above
*/
int allOn( int Red, int Green, int Blue) {
  for (int i = 0; i < NUM_LEDS; i++) {
    // leds[].setRGB() takes RGB values, from 0,0,0 up to 255,255,255
    leds[i].setRGB(Red, Green, Blue);
  }
  FastLED.show(); // sends the updated pixel color to the hardware
}

/*
  allOnRGBBr() takes 4 arguments: R, G, B, brightness (0-255)
  Note: it uses NUM_LEDS global variable defined above
*/
int allOnRGBBr( int Red, int Green, int Blue, int Brightness) {
  for (int i = 0; i < NUM_LEDS; i++) {
    // leds[].setRGB() takes RGB values, from 0,0,0 up to 255,255,255, brightness 0-255
    leds[i].setRGB(Red, Green, Blue);
    leds[i] %= Brightness;
    //leds[i].nscale8_video(Brightness);
    //leds[i].nscale8(Brightness);
    //leds[i].fadeToBlackBy(Brightness);

  }
  FastLED.show(); // sends the updated pixel color to the hardware
}

/*
  Up() takes 4 arguments (times are in milliseconds):
   time between LEDs as they march up, R, G, B (0-255)
*/
int Up( int fadeUp, int Red, int Green, int Blue) {
  // For a set of NeoPixels the first NeoPixel is 0, second is 1,
  // all the way up to the count of pixels minus one
  for (int i = 0; i < NUM_LEDS; i++) {
    // leds[].setRGB() takes RGB values, from 0,0,0 up to 255,255,255
    leds[i].setRGB(Red, Green, Blue);
    FastLED.show(); // This sends the updated pixel color to the hardware
    delay(fadeUp); // Delay for a period of time (in milliseconds)
  }
}

/*
  Down() takes 4 arguments (times are in milliseconds):
   time between LEDs as they march down, R, G, B (0-255)
*/
int Down(int fadeDown, int Red, int Green, int Blue) {
  // For a set of NeoPixels the first NeoPixel is 0, second is 1,
  // all the way up to the count of pixels minus one.
  for (int i = NUM_LEDS; i >= 0; i--) {
    // leds[].setRGB() takes RGB values, from 0,0,0 up to 255,255,255
    leds[i].setRGB(Red, Green, Blue);
    FastLED.show(); // This sends the updated pixel color to the hardware
    delay(fadeDown); // Delay for a period of time (in milliseconds)
  }
}

/*
  UpDown() takes 10 arguments (times are in milliseconds):
   1. time between LEDs as they light up with 1st color,
   2. time between LEDs as they march down using 2nd color,
   3. time for all to stay lit with first color,
   4. time for all to stay lit with second color,
   5-7. R, G, B 1st color (0-255)
   8-10. R, G, B 2nd color (0-255)
*/
int UpDown(int runUp, int runDown, int upTime, int downTime, int rUp, int gUp, int bUp, int rDown, int gDown, int bDown) {
  Up(runUp, rUp, gUp, bUp);             // run up 1st color
  delay(upTime);                        // wait a bit
  Down(runDown, rDown, gDown, bDown);   // run down in 2nd color
  delay(downTime);                      // wait a bit
}

/*
  breathe() takes 6 arguments (times are in millliseconds):
   1. how fast to inhale,
   2. how fast to exhale,
   3. how long to hold between inhaling & exhaling,
   4-6. R, G, B (0-255)
  Note: breathe doesn't let the LEDs colors fade completely out
  You can change this by making the "3's" into "0's" in the FOR loops
*/
int breathe(int inhale, int exhale, int holdTime, int Red, int Green, int Blue) {
  allOnRGBBr(0, 0, 0, 0);
  
  for (int i = 0; i <= 255; i++) {  // fade all up - not starting from 0
    allOnRGBBr(Red, Green, Blue, i);
    FastLED.show(); // sends the updated pixel color to the hardware
    delay(inhale);
  }

  delay (holdTime);   // hold

  for (int i = 255; i >= 0; i--) {  // fade all down
    allOnRGBBr(Red, Green, Blue, i);
    FastLED.show(); // sends the updated pixel color to the hardware
    delay(exhale);
  }
  
  delay(holdTime);   // hold when exhaled shorter than hold when inhaled
}

/*
  flash() takes 6 arguments (times are in milliseconds):
    how many times to flash, how long to be on, how long to be off, R, G, B (0-255)
*/
void flash(int times, int onTime, int offTime, int Red, int Green, int Blue, int Brightness) {
  for (int i = 0; i < times; i++) {
    allOnRGBBr(Red, Green, Blue, Brightness);        // needs allOn function above
    delay(onTime);
    allOnRGBBr(0, 0, 0, 0);
    delay(offTime);
  }
}



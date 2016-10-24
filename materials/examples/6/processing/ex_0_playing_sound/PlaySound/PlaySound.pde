/*
 * Play sound one time
 */
import processing.sound.*;
SoundFile file;

void setup() {
  size(640, 360);
  background(255);

  file = new SoundFile(this, "003_tink4.wav");
  delay(1000);
  file.play();
}      

void draw() {
  // even if you are not drawing anything
  // you still need an empty draw method
  // when using audio
}
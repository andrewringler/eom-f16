/* display “shadows” from the webcam
 * from previous points in time
 *
 * use motion tracking, so that shadows are only moving objects 
 *
 * If you increase the number of frames too much
 * you may also have to increase the amount of memory available to the sketch
 * See Processing > Preferences… > “Increase maximum available memory to…”
 */

// https://processing.org/reference/libraries/video/Capture.html
import processing.video.*;

Capture video;
/* this is the number of old frames we save, the greater this number
 * the longer delay we can have in playing back the webcam feed */
int numberOfFrames = 60;
CircularImageBuffer frames = new CircularImageBuffer(numberOfFrames, 640, 480);

void setup() {
  size(640, 480, P3D);
  frameRate(60);
  video = new Capture(this, width, height, 30);
  video.start();
}

void draw() {
  background(0);

  /* grab next frame available */
  if (video.available()) {
    frames.add(video);
  }

  /* draw frame on screen,
   * mirror image using scale + translate */
  scale(-1, 1);
  translate(-video.width, 0);
  noTint();
  image(frames.current(), 0, 0);
  
  // overlay motion frame as transparency
  tint(255, 90); // https://processing.org/reference/tint_.html
  image(frames.oldestMotionPortion(), 0, 0);
}
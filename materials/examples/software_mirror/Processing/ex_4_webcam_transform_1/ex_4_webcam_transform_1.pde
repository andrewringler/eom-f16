/* Capture video from the webcam
 * then display this video mirrored
 */

// https://processing.org/reference/libraries/video/Capture.html
import processing.video.*;

Capture video;

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
    video.read();
  }

  /* rotate about the center */
  translate(-video.width/2.0, -video.height/2.0);
  rotate(TWO_PI*0.01);
  translate(video.width/2.0, video.height/2.0);

  /* draw frame on screen,
   * mirror image using scale + translate */
  scale(-1, 1);
  translate(-video.width, 0);
  image(video, 0, 0);
}
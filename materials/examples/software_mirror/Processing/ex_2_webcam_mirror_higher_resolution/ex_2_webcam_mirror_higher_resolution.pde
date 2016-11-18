/* Capture video from the webcam
 * then display this video mirrored
 *
 * Be sure to install "Video" library
 */

// https://processing.org/reference/libraries/video/Capture.html
import processing.video.*;

Capture video;

void setup() {
  size(1280, 720);
  frameRate(60);

  /* make sure you specify a resolution your camera actually supports, see printout in console */
  println(Capture.list());
  video = new Capture(this, 1280, 720, 30); // ask for 1280x720 at 30fps from our webcam
  video.start();
}

void draw() {
  /* grab next frame available */
  if (video.available()) {
    video.read();
  }

  /* draw frame on screen,
   * mirror image using scale + translate */
  scale(-1, 1);
  translate(-video.width, 0);
  image(video, 0, 0);
}
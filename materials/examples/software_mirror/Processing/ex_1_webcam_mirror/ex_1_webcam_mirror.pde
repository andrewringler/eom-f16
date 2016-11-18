/* Capture video from the webcam
 * then display this video mirrored
 *
 * Be sure to install "Video" library
 */

// https://processing.org/reference/libraries/video/Capture.html
import processing.video.*;

Capture video;

void setup() {
  size(640, 480);
  frameRate(60);
  video = new Capture(this, width, height, 30);
  video.start();
}

void draw() {
  /* grab next frame available */
  if (video.available()) {
    video.read();
  }

  /* draw frame on screen,
   * mirror image (flip left-to-right) using scale + translate
   * that way the image behaves the same as a mirror
   * if you are projecting on glass and viewing from the opposite site, then 
   * you wouldn't need to flip the image
   */
  scale(-1, 1);
  translate(-video.width, 0);
  image(video, 0, 0);
}
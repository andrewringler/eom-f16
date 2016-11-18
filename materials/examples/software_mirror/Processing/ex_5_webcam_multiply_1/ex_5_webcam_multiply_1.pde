/* Capture video from the webcam
 * then display this video mirrored
 */

// https://processing.org/reference/libraries/video/Capture.html
import processing.video.*;

Capture video;

void setup() {
  size(640, 480, P3D); // switch to 3D renderer, https://processing.org/tutorials/p3d/
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

  int imageWidth = 60;
  int imageHeight = 50;
  for (int i=0; i<width; i+=imageWidth) {
    for (int j=0; j<height; j+=imageHeight) {
      pushMatrix(); // scope transforms, https://processing.org/reference/pushMatrix_.html
      translate(i, j);
      drawWebcamImage(imageWidth, imageHeight);  
      popMatrix();
    }
  }
}

void drawWebcamImage(float w, float h) {
  pushMatrix(); 
  /* draw frame on screen,
   * mirror image using scale + translate */
  scale(-1, 1);
  translate(-w, 0);
  image(video, 0, 0, w, h);
  popMatrix();
}
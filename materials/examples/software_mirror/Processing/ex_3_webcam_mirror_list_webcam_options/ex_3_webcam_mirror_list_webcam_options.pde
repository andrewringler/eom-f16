/* Capture video from the webcam
 * then display this video mirrored
 * edit camera configuration
 */

// https://processing.org/reference/libraries/video/Capture.html
import processing.video.*;

Capture video;

void setup() {
  size(1280, 720);
  frameRate(60);

  String[] cameras = Capture.list();

  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }

    // The camera can be initialized directly using an 
    // element from the array returned by list():
    // on my laptop cameras[0] is
    // name=FaceTime HD Camera,size=1280x720,fps=30
    video = new Capture(this, cameras[0]);
    video.start();
  }
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
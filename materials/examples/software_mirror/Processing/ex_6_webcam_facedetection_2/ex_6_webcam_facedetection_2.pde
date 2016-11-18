/* Be sure to install "Video" and "OpenCV for Processing" libraries
 * Replaces a face with an ellipse
 */
import processing.video.*; // https://processing.org/reference/libraries/video/Capture.html
import gab.opencv.*; // https://github.com/atduskgreg/opencv-processing
import java.awt.Rectangle;

Capture video;
OpenCV opencv;
Rectangle[] faces = new Rectangle[]{}; // initially empty, no faces
PImage frameToProcess; // frame to perform image processing on
int IMG_W = 640; 
int IMG_H = 480; 

int IMG_PROCESSING_W = 640/3; 
int IMG_PROCESSING_H = 480/3; 

void setup() {
  size(640, 480, P3D); // switch to 3D renderer, https://processing.org/tutorials/p3d/
  frameRate(60);
  background(0);

  video = new Capture(this, IMG_W, IMG_H, 30);
  video.start();

  frameToProcess = createImage(IMG_PROCESSING_W, IMG_PROCESSING_H, RGB);
  opencv = new OpenCV(this, IMG_PROCESSING_W, IMG_PROCESSING_H); // do image processing on smaller image
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);
}

void draw() {
  background(0);

  /* grab next frame available */
  if (video.available()) {
    // make a copy of the video frame, scaled down to the small size we want for image processing
    frameToProcess.copy(video, 0, 0, video.width, video.height, 0, 0, IMG_PROCESSING_W, IMG_PROCESSING_H);
    frameToProcess.updatePixels();
    video.read();
  }

  // run face detection on occassion, it is slow
  if (frameCount % 20 == 0) {
    thread("detectFaces");
  }

  /* draw frame on screen,
   * mirror image using scale + translate */
  scale(-1, 1);
  translate(-video.width, 0);
  //image(video, 0, 0, video.width, video.height);


  // overlay face detection square
  noFill();
  strokeWeight(9);
  stroke(20, 100, 20);
  
  /* we did our image processing with a smaller image, we need to scale back up
   * the location of faces */
  scale((float)video.width / IMG_PROCESSING_W, (float)video.height / IMG_PROCESSING_H);
  for (int i = 0; i < faces.length; i++) {
    // draw an ellipse for each face location
    ellipse(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
  }
}

void detectFaces() {
  /* run openCV face detection on the current video frame */
  opencv.loadImage(frameToProcess);
  faces = opencv.detect();
}
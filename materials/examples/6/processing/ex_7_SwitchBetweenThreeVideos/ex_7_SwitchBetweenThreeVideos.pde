/* NOTE: you must first install the Video library
 * Sketch -> Import Library… -> Add Library… -> "Video"
 * on the Mac this installs to 
 * Macintosh HD ▸ Users ▸ your-name ▸ Documents ▸ Processing ▸ libraries
 * and is then usable on every other sketch
 */
import processing.video.*; // tell Processing to use the optional Video library
Movie video1; // declare myMovie in global space so we can use it in draw()
Movie video2;
Movie video3;
int currentVideo = 1;

void setup() {
  size(1280, 720);

  /* load the movie video1.mov into our variable
   * it must be located in the "data" directory */
  video1 = new Movie(this, "video1.mov");
  video2 = new Movie(this, "video2.mov");
  video3 = new Movie(this, "video3.mov");
}

void draw() {
  background(0);
  
  if (currentVideo == 1) {
    image(video1, 0, 0); // write out myMovie to the screen
  }
  if (currentVideo == 2) {
    image(video2, 0, 0); // write out myMovie to the screen
  }
  if (currentVideo == 3) {
    image(video3, 0, 0); // write out myMovie to the screen
  }
}

/* movieEvent is called every time a new frame is available to read
 * automatically by Processing */
void movieEvent(Movie m) {
  /* read the next frame into our myMovie variable
   * here "m" is actually the same as myMovie
   * this becomes useful when we have 2 or more movies
   */
  m.read();
}

void keyPressed() {
  video1.stop();
  video2.stop();
  video3.stop();
  video1.jump(0);
  video2.jump(0);
  video3.jump(0);
  
  if (key == '1') {
    currentVideo = 1;
    video1.play();
  }
  if (key == '2') {
    currentVideo = 2;
    video2.play();
  }
  if (key == '3') {
    currentVideo = 3;
    video3.play();
  }
}
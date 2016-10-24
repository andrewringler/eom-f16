/* stop drawing the movie if the mouse is less than
 * 200 in the x direction
 * but the movie keeps playing */ 
import processing.video.*; // tell Processing to use the optional Video library
Movie heatherMovie; // declare myMovie in global space so we can use it in draw()

void setup() {
  size(1280, 720);

  /* load the movie HeatherHansenOchi_30s.mp4 into our myMovie variable
   * it must be located in the "data" directory */
  heatherMovie = new Movie(this, "HeatherHansenOchi_30s.mp4"); // 1280x720
  heatherMovie.loop(); // start the movie playing
  frameRate(5);
}

void draw() {
  image(heatherMovie, 0, 0); // write out myMovie to the screen
}

/* movieEvent is called every time a new frame is available to read
 * automatically by Processing */
void movieEvent(Movie m) {
  /* read the next frame into our myMovie variable
   * here "m" is actually the same as myMovie
   * this becomes useful when we have 2 or more movies
   * only read in the next frame with the mouseX
   * is greater than 200, or if frameCount is 0 we
   * have just loaded the sketch so read in one frame
   */
  if (mouseX > 200 || frameCount == 0) {
    m.read();
  }
}
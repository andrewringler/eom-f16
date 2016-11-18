/* Maintains a circular buffer of PIamges
 * most recently added item is last in the buffer
 */
class CircularImageBuffer {
  private int size;
  private PImage[] buffer;
  private int currentFrame = 0;
  private int oldestFrame = 1;
  private int w, h;

  public CircularImageBuffer(int size, int w, int h) {
    this.size = size;
    this.w = w;
    this.h = h;
    buffer = new PImage[size];
    // populate buffer with empty images, to store the frames
    for (int i=0; i<size; i++) {
      buffer[i] = createImage(w, h, RGB);
    }
  }

  void add(Capture video) {
    currentFrame++;
    if (currentFrame >= size) {
      currentFrame = 0;
    }
    oldestFrame = currentFrame + 1;
    if (oldestFrame >= size-1) {
      oldestFrame = 0;
    }

    buffer[currentFrame].copy(video, 0, 0, video.width, video.height, 0, 0, w, h);
    buffer[currentFrame].updatePixels();
  }

  /* return the oldest frame in the buffer */
  PImage oldest() {
    return buffer[oldestFrame];
  }

  /* return the current frame in the buffer */
  PImage current() {
    return buffer[currentFrame];
  }
}
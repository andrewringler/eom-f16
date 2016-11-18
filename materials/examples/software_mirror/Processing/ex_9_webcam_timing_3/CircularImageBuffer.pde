/* Maintains a circular buffer of PIamges
 * most recently added item is last in the buffer
 */
class CircularImageBuffer {
  private int size;
  private PImage[] buffer;
  private int currentFrame = 0;
  private int oldestFrame = 1;
  private int w, h;
  PImage motionPImage;

  public CircularImageBuffer(int size, int w, int h) {
    this.size = size;
    this.w = w;
    this.h = h;
    buffer = new PImage[size];
    motionPImage = createImage(w, h, ARGB);
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

  /* return the motion portion of oldest frame */
  PImage oldestMotionPortion() {
    PImage frame2 = oldest();
    int frame1I = oldestFrame-1;
    if (frame1I <= 0) {
      frame1I = size-1;
    }
    PImage frame1 = buffer[frame1I];
    frame1.loadPixels();
    frame2.loadPixels();
    motionPImage.loadPixels();
    float threshold = 50; // motion threshold

    // Begin loop to walk through every pixel
    for (int x = 0; x < frame1.width; x ++ ) {
      for (int y = 0; y < frame1.height; y ++ ) {
        int loc = x + y*frame1.width;            // Step 1, what is the 1D pixel location
        color current = frame2.pixels[loc];      // Step 2, what is the current color
        color previous = frame1.pixels[loc];     // Step 3, what is the previous color

        // Step 4, compare colors (previous vs. current)
        float r1 = red(current); 
        float g1 = green(current); 
        float b1 = blue(current);
        float r2 = red(previous); 
        float g2 = green(previous); 
        float b2 = blue(previous);
        float diff = dist(r1, g1, b1, r2, g2, b2);

        // Step 5, How different are the colors?
        // If the color at that pixel has changed, then there is motion at that pixel.
        if (diff > threshold) { 
          // If motion, display original color
          motionPImage.pixels[loc] = color(current);
        } else {
          // If no motion, display transparency
          motionPImage.pixels[loc] = color(0, 0, 0, 0);
        }
      }
    }
    motionPImage.updatePixels();
    return motionPImage;
  }
}
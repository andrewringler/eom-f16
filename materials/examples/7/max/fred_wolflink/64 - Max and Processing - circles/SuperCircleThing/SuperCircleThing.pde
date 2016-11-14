import netP5.*;
import oscP5.*;

OscP5 oscar;
int gridSize = 15;
float circleSize = 10.0;
float noiseSize = 2.0;
int redundancy = 1;
float sinePos = 0.0;
float sineSpeed = 0.2;


void setup() {
  size(600, 600, P3D);
  frameRate(60);
  oscar = new OscP5(this, 2338);
  oscar.plug(this, "low", "/low");
  oscar.plug(this, "mid", "/mid");
  oscar.plug(this, "hi", "/hi");
}

void draw() {
  noStroke();
  fill(0, 50);
  rect(0, 0, width, height);

  noFill();
  stroke(255);
  for (int i=0; i<gridSize; i++) {
    for (int j=0; j<gridSize; j++) {
      for (int k=0; k<redundancy; k++) {
        float px = ((i+0.5) * width) / gridSize + random(-1., 1.)*circleSize*noiseSize;
        float py = ((j+0.5) * height) / gridSize + circleSize*sin(i + sinePos);
        ellipse(px, py, circleSize, circleSize);
      }
    }
  }

  sinePos += sineSpeed;
}

void low(float lo) {
  circleSize = map(lo, 0, 25, 1, 1000);
}

void mid(float mid) {
  sineSpeed = map(mid, 0, 4, 0, 4);
}

void hi(float hi) {
  noiseSize = map(hi, 0, 12, 0, 10);
}
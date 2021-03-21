import org.openkinect.processing.*;

Kinect kinect;

void setup() {
  frameRate(60);
  size(640, 480, P3D);
  kinect = new Kinect(this);
  kinect.initDepth();
  //kinect.initDevice();
}

void draw() {
  background(0);
  
  PImage img = kinect.getDepthImage();
  image(img, 0, 0);
  
  int skip = 10;
  for (int x = 0; x < img.width; x+=skip) {
    for (int y = 0; y < img.height; y+=skip) {
      int index = x + y * img.width;
      float b = brightness(img.pixels[index]);
      float z = b;
      fill(b);
      pushMatrix();
      translate(x, y, z);
      rect(0, 0, skip, skip);
      popMatrix();
    }  
  }
}

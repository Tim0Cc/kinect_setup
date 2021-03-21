import org.openkinect.processing.*;

Kinect kinect;

void setup() {
  frameRate(60);
  size(640, 480);
  kinect = new Kinect(this);
  kinect.initDepth();
  //kinect.initDevice();
}

void draw() {
  background(0);
  
  PImage img = kinect.getDepthImage();
  image(img, 0, 0);
  
  int skip =5;
  for (int x = 0; x < img.width; x+=skip) {
    for (int y = 0; y < img.height; y+=skip) {
      int index = x + y * img.width;
      float b = brightness(img.pixels[index]);
      fill(b);
      //float z = map(b, 0, 255, 250, -250);
      //fill(255-b);
      //pushMatrix();
      //translate(x, y, z);
      //rect(0, 0, skip/2, skip/2);
      //popMatrix();
    }  
  }
}

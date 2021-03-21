import org.openkinect.processing.*;

Kinect kinect;

void setup() {
  size(512, 424);
  kinect = new Kinect(this);
  kinect.initDepth();
  //kinect.initDevice();
}

void draw() {
  background(0);
  
  PImage img = kinect.getDepthImage();
  image(img, 0, 0);
  
  for ( int x = 0; x < img.width; x++) {
    for (int y = 0; y < img.height; y++) {
      
    }
    
  }
}

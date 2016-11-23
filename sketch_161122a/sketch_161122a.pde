
import processing.video.*;
Swipe stuff;
Capture video;

float moveRectX = 0 ;

boolean upDown = true;

void setup(){
  size(320,240);
  for(int i = 0; i<width/10; i++)
{
  stuff = new Swipe();
 
}
  stuff.objectSize= 10;
  
  video = new Capture(this,320,240, 5);
  video.start();
  frameRate(5);
};

  void draw() {
    video.read();
    image(video,0,0);
    loadPixels();
    video.loadPixels();

    stuff.display();
    stuff.move();
  }
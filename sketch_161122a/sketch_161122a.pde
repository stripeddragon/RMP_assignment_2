
import processing.video.*;
Swipe stuff;
Pixeled pMode;
Capture video;

float moveRectX = 0 ;
boolean change = false;
boolean upDown = true;

void setup(){
  size(320,240);


  stuff = new Swipe();
 

  pMode = new Pixeled();

  pMode.objectSize= 5;
  video = new Capture(this,320,240, 30);
  video.start();
  frameRate(30);
};
void mouseClicked()
{
  if(change == false)
  {
   change = true;
  }
  else
  {
   change = false;
  }
}
  void draw() {
    video.read();
    loadPixels();
    video.loadPixels();
    if(change == true)
    {
    stuff.display();
    stuff.move();
    }
    if(change == false)
    {
    image(video,0,0);
    pMode.display();
    
    }
  }
  
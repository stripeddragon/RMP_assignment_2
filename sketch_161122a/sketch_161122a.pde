
import processing.video.*;
Swipe stuff;
Pixeled pMode;
Capture video;

float moveRectX = 0 ;
boolean change = false;
boolean upDown = true;

void setup(){
  size(320,240);
  for(int i = 0; i<width/10; i++)
{
  stuff = new Swipe();
 
}
  pMode = new Pixeled();
  stuff.objectSize= 5;
  pMode.objectSize= 5;
  video = new Capture(this,320,240, 5);
  video.start();
  frameRate(5);
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
    if(change == false)
    {
    stuff.display();
    stuff.move();
    }
    if(change == true)
    {
    image(video,0,0);
    pMode.display();
    
    }
    
   
  }
  
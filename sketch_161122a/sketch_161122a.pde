
import processing.video.*;

Capture video;

float moveRectX = 0 ;

boolean upDown = true;

void setup(){
  size(640,480);
  frameRate(5);
 

  video = new Capture(this,640,480, 5);
  

  video.start();
};
void draw(){
 if (video.available()) {
 
    video.read();
  } 
for(int i = 0;i <= 10; i++ )
  {
  float positionY = 10 ;
  rect(positionY*i,moveRectX,10,10);
  }
  if(moveRectX >= height)
  {
    upDown = false;
  }
  if(moveRectX <= 0)
  {
    upDown = true;
  }
   if(upDown == false)
  {
    moveRectX -= 5;
  }
  if(upDown == true)
  {
    moveRectX += 5;
  }
};
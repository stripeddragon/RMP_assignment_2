
import processing.video.*;

Capture video;

float moveRectX = 0 ;

boolean upDown = true;

void setup(){
  loadPixels();
  size(640,480);
  video = new Capture(this,640,480, 30);
  video.start();
};
void draw(){
 if (video.available()) {
 
    video.read();
  } 
  image(video,0,0);
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
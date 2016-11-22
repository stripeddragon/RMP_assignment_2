
import processing.video.*;

Capture video;

float moveRectX = 0 ;

boolean upDown = true;

void setup(){
  loadPixels();
  size(640,480);
  video = new Capture(this,640,480, 5);
  video.start();
  frameRate(5);
};

void draw(){
 if (video.available()) {
    video.read();
  } 

for(int i = 0;i <= width/10; i++ ){
  for(int x = 0; x < height; ++x){
    for(int y = 0; y < height; ++y){
     
     int loc = x+y * width;
     
     float r= red(video.pixels[loc]); 
     float g= red(video.pixels[loc]); 
     float b= red(video.pixels[loc]); 
     
     fill(r,g,b);
     float positionY = 10 ;
     rect(positionY*i,moveRectX,10,10);
     noStroke();
   }
  }
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


float moveRectX = 0 ;

boolean upDown = true;

import processing.video.*;

Capture video;
import processing.video.*;


void setup() {
  size(320,240);

  video = new Capture(this,320,240,30);
  video.start();
  

}



void draw(){
  video.read();
  image(video,0,0);
  loadPixels();
  video.loadPixels();
  

//for(int i = 0;i <= width/2; i++ ){
    float positionY = 2 ;
      for (int y = 0; y < height; y+=5 ) {
       for (int x = 0; x < width; x +=5 ) {
      
        int loc = x + y*width;
      
        float r = red(video.pixels[loc]);
        float g = green(pixels[loc]);
        float b = blue(pixels[loc]);
        noStroke();
        color c = color(r,g,b) ;
        fill(c);
        rect(/*positionY*i,moveRectX*/x,y,5,5);
      }
    }  
  //}

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
    moveRectX -= 2;
  }
  if(upDown == true)
  {
    moveRectX += 2;
  }

};
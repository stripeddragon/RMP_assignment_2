
import processing.video.*;

Capture video;

float moveRectX = 0 ;

boolean upDown = true;

void setup(){
  size(320,240);
  video = new Capture(this,320,240, 30);
  video.start();
  //frameRate(5);
};

  void draw() {
    video.read();
    image(video,0,0);
    loadPixels();
    video.loadPixels();

  for (int x = 0; x < width; x+=5 ) {
    for (int y = 0; y < height; y+=5 ) {

      int loc = x + y*video.width;

      float r = red (video.pixels[loc]);
      float g = green (video.pixels[loc]);
      float b = blue (video.pixels[loc]);
     
     color c = color(r,g,b);
     fill(c);
     noStroke();
     for(int i=0;i<width/5; i+=5)
     {
     rect(x,y,5,5);
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
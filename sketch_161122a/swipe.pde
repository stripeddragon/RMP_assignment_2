class Swipe{
 
  float objX;
  float objY;
  boolean upDown = false;

  float objectSize;
  
  boolean done = false;
 
  void display(){
   if(done == false){
   for (int x = 0; x < width; x+=10 ) {
  
    for (int y = 0; y < height; y+=10 ) {
      
      
      int loc = x + int(objY)*video.width;

      float r = red (video.pixels[loc]);
      float g = green (video.pixels[loc]);
      float b = blue (video.pixels[loc]);
       
      color c = color(r,g,b);
      

      noStroke();
      fill(c);
      ellipse(x,objY, objectSize,objectSize);
      if(objY>=height-9)
      {
        done = true;
      }
      }
    }
  }
  else{
    for (int x = width; x >= 0; x-=10 ) {
  
    for (int y = 0; y < height; y-=10 ) {
      
      
      int loc = x + int(objY)*video.width;

      float r = red (video.pixels[loc]);
      float g = green (video.pixels[loc]);
      float b = blue (video.pixels[loc]);
       
      color c = color(r,g,b);
      

      noStroke();
      fill(c);
      ellipse(x,objY, objectSize,objectSize);
        if(objY<=10)
        {
        done = false;
        }
      
      }
    }
  }
}
  void move(){
  if(this.objY >= height)
  {
    upDown = false;
  }
   if(this.objY <= height/height-1)
  {
    upDown = true;
  }
   if( upDown == true)
  {
    objY +=5;
  }
   if( upDown == false)
  {
    objY -=5;
  }
  }

}
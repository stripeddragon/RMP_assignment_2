class Swipe{
 
  float objX;
  float objY;
  boolean upDown = false;

  float objectSize;
  

 
  void display(){

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
     
 }
    }
  }
 
  void move(){
  if(this.objY >= height-9)
  {
    upDown = false;
  }
   if(this.objY <= height/height)
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
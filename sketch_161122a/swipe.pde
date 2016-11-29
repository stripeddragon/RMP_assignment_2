class Swipe{
  float changeTint;
  boolean switchColor = false;

  float objY;
  boolean upDown = false;
   
  float objectSize;


 
  void display(){
    if(mouseX >= width/10)
    {
      objectSize = int(mouseX/20);
    }
    else
    {
     objectSize = 2;
    }
   for (int x = 0; x < width; x+=objectSize ) {
  
    for (int y = 0; y < height; y+=objectSize ) {
      
      int loc = x + int(objY)*video.width;

      float r = red (video.pixels[loc]);
      float g = green (video.pixels[loc]);
      float b = blue (video.pixels[loc]);
      if(keyPressed)
      {
        if(key == 'r')
        {
          r = changeTint;
        }
        if(key == 'g')
        {
          g = changeTint;
        }
        if(key == 'b')
        {
          b = changeTint;
        }
      }
      color c = color(r,g,b);
      

      noStroke();
      fill(c);
      rect(x,objY, objectSize,objectSize);

 }
    }
  }
 
  void move(){
  if(this.objY >= height-objectSize)
  {
    upDown = false;
  }
   if(this.objY <= height/height+objectSize)
  {
    upDown = true;
  }
   if( upDown == true)
  {
    objY +=objectSize;
  }
   if( upDown == false)
  {
    objY -=objectSize;
  }
  }

}

class Pixeled{
 

  float objectSize;
  

 
  void display(){

   for (int x = 0; x < width; x+=objectSize ) {
  
    for (int y = 0; y < height; y+=objectSize ) {
      
      
      int loc = x + int(y)*video.width;

      float r = red (video.pixels[loc]);
      float g = green (video.pixels[loc]);
      float b = blue (video.pixels[loc]);
       
      color c = color(r,g,b);
      

      noStroke();
      fill(c);
      rect(x,y, objectSize,objectSize);
     
     }
    }
  }
}
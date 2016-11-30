import ddf.minim.*;

import processing.video.*;

Minim minim;
AudioInput in;

Swipe stuff;
Pixeled pMode;

Capture video;

String locationName;

int temperature;

float moveRectX = 0 ;

boolean change = false;
boolean upDown = true;

void setup(){
  size(320,240);
  
  minim = new Minim(this);
  in = minim.getLineIn();
  
  XML xmlSammple = loadXML("data.xml");
  
  XML temperatureNode = xmlSammple.getChild("temperature");
  
  temperature = (int)(temperatureNode.getFloat("value")-273.15);
  
  stuff = new Swipe();
  stuff.changeTint = temperature ;

  pMode = new Pixeled();

  pMode.objectSize= 5;
  video = new Capture(this,320,240, 30);
  video.start();
  frameRate(30);
};
void keyPressed()
      {
        if(key == 't')
        {
          if(stuff.count<=3)
          {
          stuff.count ++;
          }
          else
          {
            stuff.count = 0;
          }
        }
       } 
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
    fill(0,0,0,in.left.level()*200);
    rect(0,0,width,height);
    
    }
   
   
  }
  
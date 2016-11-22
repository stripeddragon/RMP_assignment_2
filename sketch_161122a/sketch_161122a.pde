float moveRectX = 0 ;

boolean upDown = true;
void setup(){
  size(400,400);
};
void draw(){
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
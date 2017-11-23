class ball
{
  float x;
  float y;
  float Dirx;
  float Diry;
  float size=40;
  
  ball()
  {
   x=301;
   y=100; 
   Dirx=1;
   Diry=1;
  }
  
  void render()
  {
    image(sball,x+1200-x3,300,size,size);
  }
  
  
  void Move()
  {
  x += Dirx*50;
  y += Diry*50;
  
  {
    if(x>680)
  {
    Dirx *= -1;
  }
  if(x<300)
  {
    Dirx *= -1;
  }
  if(y>height|| y<0)
  {
    Diry *= -1;
  }
  }
  }


  
  
}
class bball
{
  float x;
  float y;
  float Dirx;
  float Diry;
  float size=40;
  
  bball()
  {
   x=100;
   y=100; 
   Dirx=1;
   Diry=1;
  }
  
  void render()
  {
    image(bball,1580-x2-x3,x,size,size);
  }
  
  
  void Move()
  {
  x += Dirx*10;
  y += Diry*10;
  
  {
    if(x>400)
  {
    Dirx *= -1;
  }
  if(x<100)
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
PImage screen;
PImage sball;
PImage bball;
PImage start;
PImage signb;
PImage signs;
PImage finger;
PImage sport;
PImage go;
PImage next;
PImage court;
PImage field;
PImage bmen;
PImage smen;
PImage goalb;
PImage circle;
PImage shooter;
PImage fshooter;
PImage goals;
PImage goalk;
PImage hthrow;
PImage lthrow;
PImage gthrow;
PImage lshot;
PImage shot;
PImage rshot;

int x;
int y;
int x1;
int x2;
int x3;
int x4;
int a;
int b;
int c=400;

ball b1= new ball();
bball b2= new bball();

void setup()
{
  size(1200,800);
  loadImages();
}

void loadImages()
{
  screen=loadImage("screen.png");
  sball=loadImage("sball.png");
  bball=loadImage("bball.png");
  start=loadImage("start.png");
  signb=loadImage("singb.png");
  signs=loadImage("sings.png");
  finger=loadImage("finger.png"); 
  sport=loadImage("sport.jpg");
  go=loadImage("go.png");
  next=loadImage("next.png");
  field=loadImage("field.jpg");
  court=loadImage("court.jpg");
  bmen=loadImage("basketshoot.png");
  smen=loadImage("soccerman.png");
  goalb=loadImage("goalb.png");
  goals=loadImage("goals.png");
  circle=loadImage("circle.png");
  shooter=loadImage("shooter.png");
  fshooter=loadImage("fshooter.png");
  goalk=loadImage("goalk.png");
  hthrow=loadImage("hthrow.png");
  lthrow=loadImage("lthrow.png");
  gthrow=loadImage("gthrow.png");
  lshot=loadImage("lshot.png");
  shot=loadImage("shot.png");
  rshot=loadImage("rshot.png");
}

void draw()
{
  image(screen,0,0,1200,800);
  image(start,475,350,250,100);
    if(450>600+y)
  {
    fill(random(255),random(255),random(255));
  PFont f= createFont("Georgina", 63);
    textFont(f);
    textSize(60);
    String a="PRESS GO";
    text(a,460-x1,320);
  }
  
  image(sport,1200-x1,0,1200,800);
  image(signb,1600-x1,100,400,160);
  image(signs,1600-x1,550,400,160);
  image(finger,550+x,600+y,50,50);
   if(240>600+y)
  {
    fill(random(255),random(255),random(255));
  PFont f= createFont("Georgina", 63);
    textFont(f);
    textSize(60);
    String a="PRESS Basketball";
    text(a,1550-x1,80);
  }
  
  if(530<600+y)
  {
     fill(random(255),random(255),random(255));
  PFont f= createFont("Georgina", 63);
    textFont(f);
    textSize(60);
    String a="PRESS Soccer";
    text(a,1610-x1,780);
  }
  
  
  image(court,1200-x2,0,1200,800);
  image(field,1200-x3,0,1200,800);
  image(bmen,2200-x2-x3,550,150,250);
  image(bball,2197-x2-x3,560,71,71);
  image(goalb,1300-x2-x3,100,300,700);
  image(circle,1420-x2-x3,230,100,100);
  
  b2.Move();
  b2.render();
   
  image(field,1200-x3,0,1200,800);
  image(goals,1400-x3,10,800,300);
  image(goalk,1700-x3,100,200,200);
  image(sball,1770-x3,550,40,40);
  image(smen,1740-x3,600,100,200);
  
  b1.Move();
  b1.render();
  
  
  PFont f= createFont("Georgina", 63);
    textFont(f);
    textSize(40);
    fill(250,0,4);
    String a="PRESS Home to go to home screen";
    text(a,1200-x1,35);
    
}

void keyPressed()
{
  if(key=='a')
  {
    x1=1200;
  }
  if (key=='w')
  {
    x2=1200;
  }
  if(key=='s')
  {
    x3=1200;
  }
  if(key=='d')
  {
    x2=0;
    x3=0;
  }
  if(key=='f')
  {
     if(b1.x<219)
    {
      image(hthrow,0,0,1200,800);
    }
    if(220<b1.x||b1.x<300)
    {
      image(gthrow,0,0,1200,800);
    }
     if(b1.x>400)
    {
      image(lthrow,0,0,1200,800);
    }
  }
  if(key=='g')
  {
    if(b2.x<700)
    {
      image(rshot,0,0,1200,800);
    }
    if(b2.x>301||b2.x>699)
    {
      image(shot,0,0,1200,800);
    }
    if(b2.x<300)
    {
      image(lshot,0,0,1200,800);
    }
  }
  
  
  if(key==CODED)
  {
    if(keyCode==LEFT)
    {
      x=x-10;
    }
    if(keyCode==RIGHT)
    {
      x=x+10;
    }
    if(keyCode==UP)
    {
      y=y-10;
    }
    if(keyCode==DOWN)
    {
      y=y+10;
    }
    
  }  
}
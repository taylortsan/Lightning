int startX = 150;
int startY = 0;
int endX = 0;
int endY = 150;

void setup()
{
  size(300,300);
  strokeWeight(5);
  frameRate(20);
}
void draw()
{
  background((int)(Math.random()*20),0,(int)(Math.random()*255));
  //lightning
  stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  while (endX < 300)
  { 
    endX = startX + (int)((Math.random())*10);
    endY = startY + (int)((Math.random()*50) - 9);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
  //clouds
  fill(50,50,50);
  stroke(50,50,50);
  ellipse(30,0,100,70);
  ellipse(120,20,100,80);
  ellipse(190,20,70,90);
  ellipse(250,20,90,80);
  ellipse(290,20,50,60);
  //words
  fill(255,0,0);
  text("oh no!",30,250);
}
void mousePressed()
{
  startX = 150;
  startY = 0;
  endX = 0;
  endY = 150;
}


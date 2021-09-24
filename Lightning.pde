int startX = MouseInfo.getPointerInfo().getLocation().getX();
int endX;
int startY = MouseInfo.getPointerInfo().getLocation().getY();
int endY = 500;
int w = 10;
float r;
float g;

void setup()
{
  size(500,500);
  background(151, 152, 189);
}
void draw()
{    
  while (endY >= 0){
    endX = startX + (int)(Math.random()*26 - 13);
    endY = startY - (int)(Math.random()*15);
    r = 132;
    g = 0;
    for (int w = 13; w >= 3; w = w - 2){
      stroke(r, g, 255);
      strokeWeight(w);
      line(startX, startY, endX, endY);
      r = r - 12.3;
      g = g + 25;
    }
    startX = endX;
    startY = endY;
  }
}
void keyPressed()
{
 startX = MouseInfo.getPointerInfo().getLocation().getX();
 startY = MouseInfo.getPointerInfo().getLocation().getY();
 endY = 500;
}

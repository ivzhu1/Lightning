int startX = 250;
int endX = 250;
int startY = 0;
int endY = 0;
int start2X = 250;
int end2X = 250;
int start2Y = 0;
int end2Y = 0;
int start3X = 250;
int end3X = 250;
int start3Y = 0;
int end3Y = 0;
int w = 10;
float r1, g1, r2, b2, g3, b3;

void setup()
{
  size(500,500);
  background(166, 200, 255);
}
void draw()
{    
  while (endY <= 500){
    endX = startX + (int)(Math.random()*26 - 13);
    endY = startY + (int)(Math.random()*15);
    end2X = start2X + (int)(Math.random()*44 - 22);
    end2Y = start2Y + (int)(Math.random()*20);
    end3X = start3X + (int)(Math.random()*60 - 30);
    end3Y = start3Y + (int)(Math.random()*25);
    r1 = 132;
    g1 = 0;
    r2 = 64;
    b2 = 255;
    g3 = 156;
    b3 = 161;
    for (int w = 13; w >= 3; w = w - 2){
      strokeWeight(w);
      stroke(r1, g1, 255);
      line(startX, startY, endX, endY);
      stroke(r2, r2, b2);
      line(start2X, start2Y, end2X, end2Y);
      stroke(255, g3, b3);
      line(start3X, start3Y, end3X, end3Y);
      r1 = r1 - 12.3;
      g1 = g1 + 25;
      r2 = r2 - 1.7;
      b2 = b2 - 7.6;
      g3 = g3 - 12.8;
      b3 = b3 - 12.2;
    }
    startX = endX;
    startY = endY;
    start2X = end2X;
    start2Y = end2Y;
    start3X = end3X;
    start3Y = end3Y;
  }
}
void keyPressed()
{
 startX = 250;
 endX = 250;
 startY = 0;
 endY = 0;
 start2X = 250;
 end2X = 250;
 start2Y = 0;
 end2Y = 0;
 start3X = 250;
 end3X = 250;
 start3Y = 0;
 end3Y = 0;
}

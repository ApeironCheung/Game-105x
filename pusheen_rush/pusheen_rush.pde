PImage pusheen;
PImage hamburger;
float pX;
float pY;

void setup()
{
  size(1000,1000);
  pusheen = loadImage("Pusheen.jpg");
  hamburger = loadImage("hamburger.jpg");
  pX = width / 2;
  pY = height / 2;
}

void draw()
{
  background(255);
    image(pusheen, pX, pY);
    image(hamburger, mouseX - 100, mouseY - 80);
  
  if (mouseX > pX)
  {
    pX = pX +1;
  }
  else
  {
    pX = pX -1;
  }
    if (mouseY > pY)
  {
    pY = pY +1;
  }
  else
  {
    pY = pY -1;
  }
}

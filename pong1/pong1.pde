Ball b1;        //Variable to reference a Ball object
Paddle pad;     //Paddle Object
boolean playOn; //Value is true if the game is continue
int score;      //Score displayerd at the end of game

void setup()
{
  size(500, 500);
  colorMode(HSB);    //Use hue/saturation/brightness color mode
  background(255);

  b1 = new Ball(random(1, 3), random(1, 3), 50);
  playOn = true;
  score = 0;

  pad = new Paddle();
}

void draw()
{
  background(255);

  if (playOn)
    if  (b1.moveLogo(pad))
    {
      b1.displayLogo();
      pad.move();
      pad.display();
    } else
    {
      playOn = false;
      score = frameCount;
    } else
  {
    fill(175,255,255);
    textSize(32);
    text("Game Over! Score =" + score, 50, 200);
  }
}

/* Ball class - by Pusheen
 Implements a ball suitable for pong
 */

class Ball
{
  // Attributes, aka class variables, instant variables, properties
  float xloc;
  float yloc;
  float xVal;
  float yVal;
  float accel;  //Acceleration factor ot make ball speed up
  float diam;   //Diameter of the Ball
  float rad;
  float oHue;   //Hue value of the outer circle of the logo
  float iHue;   //Hue value of the inner circle of the logo

  //Constructor for the Ball class
  Ball(float xV, float yV, float di)
  {
    xloc = width/2;
    yloc = height/2;
    xVal = xV; // start moving to the right
    yVal = yV; //
    accel = 1.001;
    diam = di;
    rad = diam/2;
    oHue = random(0,255);
    iHue = random(0,255);
  }
  
  //methods for the ball class
  //Code to move the logo each frame of the animation
  //Parameter is the paddle object, needed for collision detection
  //Returns true if the Game is not Over (play On), false if game over
  boolean moveLogo(Paddle pad)
{
  xVal = xVal * accel;         //Accelarate in x dimension only
  xloc = xloc + xVal;          //Move in X dimension
  if (xloc > width-rad)
  {
      xVal = xVal * -1;
  }
  else if (pad.collide(this))  //Bounce off of the paddle
  {
    xVal = xVal * -1;
  }
  else if (xloc < rad)  //Game Over
  {
    //xVal = xVal * -1;
    return false;
  }
  
  yVal = yVal * accel;         //Accelarate in y dimension only
  yloc = yloc + yVal;
  if (yloc > height-rad)
  {
      yVal = yVal * -1;
  }
  else if (yloc < rad)
  {
    yVal = yVal * -1;
  }
  
  return true;     //If game is not over, return true
  //xloc = xloc + random(-10, 10);
  //yloc = yloc + random(-10, 10);
}

void displayLogo()
{
  strokeWeight(5);
  stroke(0);
  oHue = oHue +1;
  if (oHue > 255)
  {
    oHue = 0;
  }
  
  iHue = iHue -1;
  if (iHue < 0)
  {
    iHue = 255;
  }
  //println(oHue);
  fill(oHue, 255, 255);
  ellipse(xloc, yloc, diam, diam);
  line(xloc-rad, yloc, xloc+rad, yloc);
  line(xloc, yloc-rad, xloc, yloc+rad);
  fill(iHue , 255, 255);
  ellipse(xloc, yloc, rad, rad);
}
}

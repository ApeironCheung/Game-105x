/* Paddle class - by HugeTummyPusheen
*/

class Paddle
{
  // Attribues
  float xLoc;     //X and Y locations
  float yLoc;
  float halfLeng; //half the length of the paddle

  //Constructor
  Paddle()
  {
    xLoc = 10;          //Always 10 pixels right of left wall
    yLoc = height / 2;
    halfLeng = 30;      // Total length of paddle is 60 (30*2)
  }

  //Methods
  void move()
  {
    yLoc = mouseY;        //Move with mouse in Y dimension
  }

  boolean collide(Ball b)
  {
   if (b.xloc < this.xLoc + b.rad &&  //Wall close enught to paddle
   b.yloc > this.yLoc-halfLeng &&     //and below the upper end of paddle
   b.yloc < this.yLoc+halfLeng)       //and above the lower end of paddle
   {
     return true;
   }
   else
   {
     return false;
   }
  }
  void display()
  {
    strokeWeight(10);
    stroke(150, 255, 175);
    line(xLoc, yLoc-halfLeng, xLoc, yLoc+halfLeng);
  }
}

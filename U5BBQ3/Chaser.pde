/* Chaser class by Al Biles
 Implements a chaser bot that chases the Player object
 Assumes reference point for Chaser is the center of its logo
 */
class Chaser
{
  // Attributes
  float xLoc;          // Location
  float yLoc;
  float side;          // Length of a side of the square logo
  float hue;           // Hue of the square logo
  float speed = 1;     // Speed in each dimension, 1 pixel per frame

  // Initialize size, generate random hue, start at a random place
  Chaser(float s)
  {
    side = s;          
    hue = random(255);
    jump();
  }

  // Handles 3 possible moves: collision with p, random jump, or chase p
  // Player p passed in as parameter so that Chaser can see where it is
  void move(Player p)
  {
    // If chaser caught the player (it collided with Player p)
    if (collide(p))
    {
      collisions = collisions + 1; 
      score = score - 100;
      jump(); // Count the collision, assess the penalty, jump to a random place
    } else if (random(1000) < 3) 
      jump(); // Every now and then (0.3% chance), jump anyway with no penalty

    // Otherwise Chaser chases Player
    else
    {
      // Move either left
      // or right
      if (p.xLoc < this.xLoc) 
        this.xLoc = this.xLoc - speed;
      // or right
      else
        this.xLoc = this.xLoc + speed;
      // Move either up
      if (p.yLoc < this.yLoc)
        this.yLoc = this.yLoc - speed;
      // or down
      else
        this.yLoc = this.yLoc + speed;
      // or down
    }
  }

  // Moves Chaser to random place on graphics window
  void jump()
  {
    xLoc = random(width); 
    yLoc = random(height);
  }

  // Collision detector; returns true if Chaser % p overlap, false o/w
  boolean collide(Player p)
  {
    if (abs(p.xLoc - this.xLoc) < side &&
      abs(p.yLoc - this.yLoc) < side)
      return true;
    else
      return false;
    }

  // Chaser logo is just a square centered on current location
  void display()
  {
    fill(hue, 255, 255); 
    strokeWeight(2);
    rect(xLoc, yLoc, side, side);
  }
}

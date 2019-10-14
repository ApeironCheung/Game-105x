/* Player class by Al Biles
   The player simply moves with the mouse
   Assumes reference point for square logo is center of square
*/
class Player
{
  // Attributes
  float xLoc;          // Location
  float yLoc;
  float side;          // Length of a side of the square logo
  float hue;           // Hue of the square logo
  
  Player(float s)
  {
    // Start Player in center of screen
    xLoc = width/2;    // 1
    yLoc = height/2;   // 1
    side = s;          // 1
    hue = random(255); // 1
  }
  
  // Movement just tracks the mouse
  void move()
  {
    xLoc = mouseX;     // 3
    yLoc = mouseY;     // 3
  }
  
  // Player is just a square
  void display()
  {
    fill(hue,255,255);         // 2
    strokeWeight(2);           // 2
    rect(xLoc,yLoc,side,side); // 2
  }
}
/* RandWalk class
*/
class RandWalk                  // 2
{                               // 2
  // Attribute declarations     // 3, 4
  float xLoc;                   // 5
  float yLoc;                   // 5
  float xLocNext;               // 5
  float yLocNext;               // 5
  float dev;                    // 5
  float hue;                    // 5

  // Parameterized constructor          // 3, 4
  RandWalk(float x, float y, float d, float h)  // 6, 7
  {                                     // 6
    xLoc = x;                           // 7
    yLoc = y;                           // 7
    dev = d;                            // 7
    hue = h;                            // 7
  }                                     // 6
  
  // stagger() method                   // 3, 4
  void stagger()                        // 8
  {                                     // 8
    xLocNext = xLoc + random(-dev,dev); // 9
    if (xLocNext < 0)                   // 10
      xLocNext = 0;                     // 10
    else if (xLocNext > width)          // 10
      xLocNext = width;                 // 10
      
    yLocNext = yLoc + random(-dev,dev); // 11
    if (yLocNext < 0)                   // 11
      yLocNext = 0;                     // 11
    else if (yLocNext > height)         // 11
      yLocNext = height;                // 11

    stroke(hue, 255, 255);              // 12
    line(xLoc,yLoc,xLocNext,yLocNext);  // 12

    xLoc = xLocNext;                    // 13
    yLoc = yLocNext;                    // 13
  }                                     // 8
}                                       // 2
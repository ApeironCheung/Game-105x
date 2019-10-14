float xLoc;           // 3
float yLoc;           // 3
float side;           // 4
float redAmt;         // 9

void setup()          // 1
{                     // 1
  size(200,200);      // 2
  xLoc = 0;           // 3
  yLoc = 0;           // 3
  side = width/3;     // 4
  redAmt = 0;         // 9
}                     // 1

void draw()           // 1
{                     // 1
  background(100);    // 2
  moveLogo();         // 8
  displayLogo();      // 6
}                     // 1

void displayLogo()                 // 5
{                                  // 5
  strokeWeight(0);                 // 5
  //fill(0,255,0);                   // 5, Commented out at 9
  fill(redAmt,255,0);              // 9
  rect(xLoc,yLoc, side,side);      // 5
  //fill(0,0,255);                   // 5, Commented out at 9
  fill(redAmt,0,255);              // 9
  rect(xLoc,yLoc, side/2,side/2);  // 5
}                                  // 5

void moveLogo()         // 7
{                       // 7
  xLoc = xLoc + 1;      // 7
  yLoc = yLoc + 1;      // 7
  redAmt = redAmt + 2;  // 9
}                       // 7
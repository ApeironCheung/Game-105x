/* Boss Battle program starter for Unit 3  by Al Biles
   This boss battle starts with a program that works but is missing all its if
   and if/else statements. Each question in the quiz will lead you toward filling
   in the missing statments, whose location in the code is indicated with comments
   that say "Answer to question _ goes here".  Some of the code segments are built
   up through multiple questions, so only the questions that result in complete
   statements are referred to in the comments.
   
   The starter code is documented to explain all the variables and the code segments
   that do not include the missing if statements.
   This code is correct, and you should not change it.
*/

/* Global variable declarations and inintializations
   It's okay to initialize these here because in this case none of the
   initializations depend on width or height, which must be assigned by the
   size() statement in setup().
*/
float side = 50;             // Length of side of logo
float xLoc = 0;              // Current x and y corrdinates of logo
float yLoc = 0;
float xVel = random(1,2);    // x and y velocities for the logo
float yVel = random(1,2);
float accel = 1.1;           // Multiply velocities by this to accelerate
float accelCtr = 200;        // Number of frames until next acceleration

float curHue = random(255);  // Current hue of logo, set randomly
float brtInit = 350;         // Start logo's brightness > max to stay there awhile
float curBrt = brtInit;      // Initialize logo's brightness
float brtVel = -2;           // Logo's brightness changes this much every frame

void setup()
{
  size(300, 250);            // Make a non-square window
  background(100);           // Use a dark gray so the colors pop better
  colorMode(HSB);            // Hue-Saturation-Brightness is more fun
}

void draw()
{
  background(100);           // Leave no trails
  moveLogo();
  drawLogo();
}

/* drawLogo() function
   Draws a square at (xLoc,yLoc) that is "side" pixels by "side" pixels
   Animates the fill color by dimming it to black and then resetting it randomly
*/
void drawLogo()
{
  curBrt = curBrt + brtVel;     // Dim the logo a little bit

  // Reset logo's brightness & hue if it's too dim
  /***** Answer to question 3 goes here *****/
  if (curBrt < 0)               // 1, 3
  {                             // 3
    curHue = random(255);       // 2, 3
    curBrt = brtInit;           // 2, 3
  }                             // 3

  strokeWeight(3);              // Make border 3 pixels wide
  fill(curHue, 255, curBrt);    // Set the color for this frame
  rect(xLoc, yLoc, side, side); // Draw the rectangle at the current location
}

/* moveLogo() function
   moves logo for each frame by adding current velocity in x and y dimensions
   to x and y locations and then bouncing off of graphics window boundaries
   (walls) when appropriate.  Also handles periodic acceleration by multiplying
   x and y velocities by the acceleration factor every 200 frames.
*/
void moveLogo()
{
  // Move in x dimension
  xLoc = xLoc + xVel;
  
  // Handle bounces off left and right walls
  /***** Answer to question 6 goes here *****/
  //if (xLoc+side > width)       // 4, 6; commented out for Q9
  //{                            // 6; commented out for Q9
  //  xVel = xVel * -1;          // 5, 6; commented out for Q9
  //}                            // 6; commented out for Q9
  /***** Answer to question 8 goes here *****/
  //else if (xLoc < 0)           // 7, 8; commented out for Q9
  //{                            // 7; commented out for Q9
  //  xVel = xVel * -1;          // 7; commented out for Q9
  //}                            // 7; commented out for Q9
  
  /***** Answer to question 9 goes here, replacing answers to 6 & 8 above *****/
  if (xLoc+side > width || xLoc < 0)  // 9
    xVel = xVel * -1;                 // 9

  // Move in y dimension
  yLoc = yLoc + yVel;
  
  // Handle bounces off of top and bottom walls
  /***** Answer to question 10 goes here *****/
  if (yLoc+side > height || yLoc < 0)  // 10
    yVel = yVel * -1;                  // 10

  // Decrement the acceleration counter by 1
  accelCtr = accelCtr - 1;
  
  // If accelCtr has run out, apply acceleration and reset the counter
  /***** Answer to question 11 goes here *****/
  if (accelCtr < 0)         // 11
  {                         // 11
    accelCtr = 200;         // 11
    xVel = xVel * accel;    // 11
    yVel = yVel * accel;    // 11
  }                         // 11
}
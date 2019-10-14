/* Unit 4 Boss Battle Main Tab  by Al Biles
   This boss battle quiz requires the student to create a new tab in which
   they will build the RandWalk class needed to work with the code in this tab.
   RandWalk has 6 attributes, a parameterized constructor, and 1 method.
   The code in this main tab declares and sets up 4 RandWalk objects,
   each of which maintains its own random walk independent of the other 3.
   Since each random walk object has its own maximuim deviation and hue,
   the 4 will be distinguishible from one another.  The code in this tab
   is correct and should not be changed. The student must construct the class
   to fit how it is being used.
*/
RandWalk rw1;
RandWalk rw2;
RandWalk rw3;
RandWalk rw4;

void setup()
{
  size(300,200);
  colorMode(HSB);
  background(0);
  float midX = width/2;
  float midY = height/2;
  float rHue = random(64);
  // Parameters are: x coordinate to start, y coordinate to start,
  //   maximum deviation in both x and y directions, hue value for the line
  rw1 = new RandWalk(midX, midY, 2, rHue);
  rw2 = new RandWalk(midX, midY, 3, rHue+64);
  rw3 = new RandWalk(midX, midY, 5, rHue+128);
  rw4 = new RandWalk(midX, midY, 8, rHue+192);
}

void draw()
{
  // Take the next next step in the random walk
  rw1.stagger();
  rw2.stagger();
  rw3.stagger();
  rw4.stagger();
}
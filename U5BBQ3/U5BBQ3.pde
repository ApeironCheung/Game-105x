/* Boss Battle 5 by Al Biles
   Simple chase game where 3 Chaser objects chase a Player object around the
   graphics window. The Player object just follows the mouse.
 
   The Chaser objects have 2 special behaviors:
   If a chaser collides with the player
     it jumps to a random location & the score decrements by 100
   Occasionally (0.3% chance in each animation frame)
     the chaser jumps on its own without a penalty
   Otherwise, the chaser just chases the player as the default behavior
 
   The player's goal is to avoid the chasers as much as possible.
   The score increments by 1 every frame, minus 100 points per collision.
   The game runs until the player has been caught 10 times (10 collisions),
   whereupon "Game Over" is displayed, and the score at that point becomes
   the final score.
*/

// Global variables
Player p;              // 1 player
Chaser c1;             // 3 chasers
Chaser c2;
Chaser c3;
float side = 50;       // Length of a side of the square used for all logos
int score = 0;         // Increments each frame; -100 when player caught
int collisions = 0;    // Counts collisions between player & a chaser
int maxCol = 10;       // Game over when collisions reaches this value

void setup()
{
  size(400, 400);
  background(255);
  colorMode(HSB);      // Easier for random colors
  rectMode(CENTER);    // Make reference points center instead of corner

  // Create the actual objects
  p = new Player(side);
  c1 = new Chaser(side);
  c2 = new Chaser(side);
  c3 = new Chaser(side);
}

void draw()
{
  background(255);

  // If the game is still active
  if (collisions < maxCol)
  {
    // First move everybody
    p.move();
    c1.move(p);
    c2.move(p);
    c3.move(p);

    // Then display everybody
    p.display();
    c1.display();
    c2.display();
    c3.display();

    // Increment the score to reflect game still active
    score = score + 1;
  }  
  // Else it's game over (game no longer active)
  else
  {
    fill(160, 255, 255);
    textSize(40);
    text("Game Over", width/2-100, height/2-10);
  }
  
  // Display the score in lower left corner of the graphics window
  fill(160,255,255);
  textSize(20);
  text("Score = " + score, 7, height-30);
  text("Caught " + collisions + " times", 7, height-7);
}
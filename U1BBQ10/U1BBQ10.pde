//size(300,200);           // Q1
size (400,300);        // Q10 - Comment out size() above & use this one
background(255);         // Q2

// Code to declare and initialize variables for center coordinates, and
// diameter and radius of the circle goes here   Q5
float xLoc = width/2;    // Q6
float yLoc = height/2;   // Q6
float diam = height/2;   // Q7
float radius = diam/2;   // Q7

// Code for the big X goes here   Q3
strokeWeight(8);         // Q4
line(0,0, width,height); // Q4
line(width,0, 0,height); // Q4

// Code for the cyan circle goes here   Q3
strokeWeight(5);         // Q8
fill(0,255,255);         // Q8
ellipse(xLoc,yLoc, diam,diam); // Q8

// Code for the crosshair plus goes here   Q3
strokeWeight(3);               // Q9
line(xLoc, yLoc-radius, xLoc, yLoc+radius); // Q9
line(xLoc-radius, yLoc, xLoc+radius, yLoc); // Q9
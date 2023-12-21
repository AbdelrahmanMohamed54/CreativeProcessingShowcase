/* 
* This code recursively draws squares on the screen
* The squares are positioned and sized based on the mouse position and 
* the number of levels of recursion 
*
* Name: Abdelrahman Mohamed
* Solution to: Mandatory exercise: Recursion
*/

void setup() {
  size(640, 480); // Set the size of the window to 640 x 480 pixels
  background(255); // Set the background color to white
  stroke(0); // Set the stroke color to black
}

void draw() {
  translate(width/2, height/2); //Translate the coordinate system to the center of the screen
  
  // Call the drawSquares() function with the initial position and size,
  //and the number of levels of recursion.
  drawSquares(0, 0, mouseX, mouseY, 6); 
}

//declare the arguments of the function that draws the squares
void drawSquares(float x, float y, float sizex, float sizey, int level) {
if (level > 0) { //determine a base case that occcurs if the level of recursions is <= 0 
//fill the squares with random RGB colours that changes
fill(random(255), random(255), random(255)); 
rotate(PI/4); //rotate the coordinate system by 45 degrees

//Draw a rectangle at the given position and with the given size
rect(x, y, sizex, sizey); 

/* Call the drawSquares() function again with updated position and size
 and one less level of recursion */
drawSquares(x+sizex/2, y+sizey/2, sizex/2, sizey/2, level-1);
drawSquares(x-sizex/2, y+sizey/2, sizex/2, sizey/2, level-1);
drawSquares(x+sizex/2, y-sizey/2, sizex/2, sizey/2, level-1);
drawSquares(x-sizex/2, y-sizey/2, sizex/2, sizey/2, level-1);
}
}

//saves a screenshot of the current position of the display when the mouse is clicked
 void mousePressed() {
save("task_6_recursion.tif");
}

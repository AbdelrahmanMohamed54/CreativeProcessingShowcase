/**
* Click to explode 
*
* In this program when you press the mouse anywhere on the screen many balls appear 
* at the point where the mouse was pressed and move in random directions and as long
* as the mouse is pressed they get smaller and smaler. when the mouse is released 
* and repressed the explosion happens again. 
*
* Name: Abdelrahman Mohamed
* Solution to: Mandatory exercise: An explosion
*
*/

int[] positionsX ;                   /* An array that stores the x positions of the shapes */
int[] positionsY ;                   /* An array that stores the y positions of the shapes */
int[] directionsX ;                  /* An array that stores the x direction that the shape moves in */
int[] directionsY ;                  /* An array that stores the y direction that the shape moves in */
float Diameter = 40.0 ;              /* declaring the variable Diameter which will represent the size of the circles*/
int Num_Circles = 20 ;               /* A variable decleration of the number of shapes to be drawn */


void setup () {                  
  
  size(640,480) ;       //setting the size of the display
  
 // Initialisation of the position and direction arrays declared above.
  directionsX = new int[Num_Circles] ;             
  directionsY = new int[Num_Circles] ;

  positionsX = new int[Num_Circles] ;
  positionsY = new int[Num_Circles] ;
  
}

void draw () {

  background(100) ;      /*Setting the background color to dark Grey*/
  
  fill(255,0,0) ;        /* Filling the circles with red color*/
  
  /* if the mouse is pressed and the size of the circle is biggre than 1 
   * (That ensures that the circles do not vanish), the size of the circle is  
   * then reduced by 0.1 per frame. 
   */
  if (mousePressed & Diameter > 1) {
     Diameter = Diameter - 0.1 ;
  }   
  
  // create the 20 circles and let them move in the randomly chosen directions each time the mouse is pressed
  for (int iPos = 0; iPos < Num_Circles; iPos++) {
    circle(positionsX[iPos] += directionsX[iPos],
    positionsY[iPos] += directionsY[iPos] ,
    Diameter) ;
  }
  
}

void mousePressed () {
   
  Diameter = 40 ;                  // Reset the size of the circles every time the mouse is pressed
  
  for (int iPos = 0; iPos < Num_Circles; iPos++) {         //assigning a random speed for every circle in the X direction 
   directionsX[iPos] = (int)random(-7, 7);
  }
   
  for (int iPos = 0; iPos < Num_Circles; iPos++) {         //assigning a random speed for the circles in the Y direction
   directionsY[iPos] = (int)random(-7, 7 );
  }
   
  for (int iPos = 0; iPos < Num_Circles; iPos++) {        //makes the balls appear at the mouse X position when the mouse is pressed  
    positionsX[iPos] = (int)mouseX ; 
  }
  
  for (int iPos = 0; iPos < Num_Circles; iPos++) {         //makes the balls appear at the mouse Y position when the mouse is pressed 
    positionsY[iPos] = (int)mouseY ;
    
  }
     
     
}
   
void mouseReleased() {
     
 //when mouse is released the circles stop moving in the X directions
  for (int iPos = 0; iPos < Num_Circles; iPos++) {
   directionsX[iPos] = 0;
  }                                                   
  
 //when mouse is released the circles stop moving in the Y directions
  for (int iPos = 0; iPos < Num_Circles; iPos++) {         
   directionsY[iPos] = 0;
  }
 
 //saves a screenshot of the current position of the ballsthat appear on the screen when the mouse is released
  save("task_5_explosion.tif");                     
 
}

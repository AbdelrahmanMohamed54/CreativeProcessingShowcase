/**
* click on the ball game
*
* In the game, a ball bounces all arround the four sides of the screen to another and you
* need to click on the ball while it is moving in order to increase your score.
* Every time you click on the ball and not miss it, your score increases and the 
* speed of the ball increases (ball accelerates) that makes it harder to click 
* on the ball, so if we assume that you missed the ball and clicked any where on 
* the screen outside the ball's Diameter, you will lose one life and the ball will
* be slower(ball decelerates). You initially have 7 lives.
*
* Name: Abdelrahman Mohamed
* Solution to: Mandatory Exercise: A simple game
*
*/


float x = 450;                 //The x-coordinate of the ball
float y = 340;                 //The y-coordinate of the ball

boolean lost = false;          //To Indicate weather the player lost or not
float xSpeed = 3;              //Initial speed of the ball in the x direction
float ySpeed = 3;              //Initial speed of the ball in the y direction
int lives = 7;                 //You lose if it reaches to 0
int score = 0;                 //Your score in the game 
int High_score = 0;            //The Highest score you achieved in all your trials


void setup () {
  size(640,480);              //setting the size of the display
}

void draw () {
 
background (0);                     //Black Background
ellipse(x ,y , 50, 50);             //Creating the ball

x += xSpeed;                     //makes the ball move in the x-coordinate direction 
if (x > width || x < 0) {        // tests if the ball touched the right and left walls or the edges of the display screen 
  xSpeed *= -1;                  //makes the ball bounce to the opposite side if it had touched the side
}

y += ySpeed;                   //makes the ball move in the y-coordinate direction
if (y > height || y < 0 ) {    //tests if the ball touched the upper and lower walls or the edges of the display screen
  ySpeed *= -1;                //makes the ball bounce to the opposite side if it had touched the side
}

if (lives <= 0) {              //checks if you still have lives remaining or not
      
      noLoop() ;               //it will stop looing if you have no lives left 
      lost = true ;            //if you have no lives left you lose
      println("You Lost!! Click to restart");      //prompt out to the console that you lost
}

if (score > High_score) {                //checks weather your score is heigher than the heighest score
      
      High_score = score ;         // if he score is higher, it assignes the high score value to the last score achieved
      println("Your High score is = "+High_score);    //prompts to the console the new high score         
      
}
    
}


void mousePressed () {  

   println("Your remaining Lives are ="+lives) ;    //prompts the remaining lives to the console after each mouse press    
    println("Your score is = "+score) ;             //print the new score after each mouse press to the console
  
  if (dist(mouseX, mouseY, x, y) <= 25) {        //tests if the moluse pressed on the ball
    
    score += 1 ;                          //increment the score each time we hit the ball
    xSpeed += score ;                  //increment the x coordinate movemrnt speed by the score to create a random acceleration
    ySpeed += score ;                  //increment the y coordinate movemrnt speed by the score to create a random acceleration
    
  }
  
  else {
    if (xSpeed > 1 && ySpeed > 1) ; {            
      
      xSpeed -= 1 ;     //decelerate the ball's x direction speed when there is a miss
      ySpeed -= 1 ;     //decelerate the ball's y direction speed when there is a miss
      
    }
    
    lives -= 1 ;         //remove one life every time you miss the ball
  }    
    
    if (lost == true) {            // Assign all the variables to thier initial values
      
      score = 0 ;
      lives = 7 ; 
      lost = false ; 
      High_score = High_score ; 
      x = 450 ; 
      y = 340 ; 
      
      
      loop() ;                   //Let the Draw function start looping again.
      
      
    }
    
    
}

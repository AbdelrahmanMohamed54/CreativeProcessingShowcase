
/** 
* Robot Drawing
*
*I drew a robot using only simple 2D shapes and basic RGB colour settings.
*
*Voluntary exercise: Beautify my slides
*Name: Abdelrahman Mohamed
*/

//Here I set the background and display size
size(960,360);
background(#2466B9);

//head and neck
fill(#6C747E);
rectMode(CENTER);
rect(480,90,120,80);
fill(#848B93);
rectMode(CENTER);
rect(480,135,60,10);

//eyes
fill(#030303);
circle(445,70,25);
circle(510,70,25);
fill(#FCFEFF);
circle(443,75,15);
circle(508,75,15);

//mouth
stroke(0);
fill(#A7AF6C);
rectMode(CENTER);
rect(480,100,55,18);
line(490,91,490,109);
line(480,91,480,109);
line(470,91,470,109);
line(460,91,460,109);
line(500,91,500,109);

//right arm 
fill(#848B93);
quad(420, 141, 420, 171, 390, 236, 370, 226);


//left arm 
fill(#848B93);
quad(540, 141, 540, 171, 570, 236, 590, 226);

//body and screen
fill(#6C747E);
rectMode(CENTER);
rect(480,191,120,100);
fill(#55C1EA);
rectMode(CENTER);
rect(480,186,86,60);

//lines inside the screen
line(437,186,447,175);
line(447,175,458,202);
line(458,202,470,161);
line(470,161,480,195);
line(480,195,495,167);
line(495,167,505,199);
line(505,199,515,160);
line(515,160,522,195);

//bottons under body screen
fill(#3ECE55);
circle(480,227,10);
fill(#FAF208);
circle(440,227,10);
fill(#FF0303);
circle(520,227,10);


//legs
fill(#848B93);
rectMode(CENTER);
rect(450,284,30,85);
rectMode(CENTER);
rect(510,284,30,85);

//foot
rectMode(CENTER);
rect(517,327,45,15);
rectMode(CENTER);
rect(443,327,45,15);

//ears
rectMode(CENTER);
rect(410,90,20,30);
rectMode(CENTER);
rect(550,90,20,30);

//cone and circle above the head
fill(#838E82);
triangle(475,50,485,50,480,30);
fill(#42D83B);
circle(480,25,10);

 
save("beautify_my_slides.tif");

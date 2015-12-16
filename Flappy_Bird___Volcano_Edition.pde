//Purpose: To create flappy bird with a volcano theme

//Name: Simon Ormsby

//Global Variables and Setting Initial Values

PImage Bird; 
PImage Volcano;
PImage Stalactite;
PImage Stalagmite;
int BirdY = 500;
int BirdSpeed = 0;
int BirdX = 100;



//Setup for Program
void setup() {
 //Creates the Canvas
 size(1400, 800);
 //Load the Images
 Bird = loadImage("FlappyBird.png"); //Loading the Flappy Bird Image
 Volcano = loadImage("Volcano.jpg"); //Loading the Flappy Bird Background
 Stalactite = loadImage("stalacite.png"); //Loading the Stalacite Image
 Stalagmite = loadImage("Stalagmite.png"); // Loading the Stalagmite Image
}

void draw() {
 //Draw the Image of the Volcano Background
 image(Volcano, 1, 1, 1400, 800);
 //Draw the Image of the Flappy Bird
 image(Bird, BirdX, BirdY, 100, 100);
 //Draw the Image of Stalactite
 image(Stalactite, 500, 1, 200, 400);
 //Draw the Second Image of Stalacite
 image(Stalactite, 200, 1, 200, 400);
 //Draw the Third Image of Stalacite
 image(Stalactite, 900, 1, 200, 400);
 //Draw the Image of Stalagmite
 image(Stalagmite, 200, 510, 200, 300);
 //Draw the Second Image of Stalagmite
 image(Stalagmite, 500, 480, 200, 320);
 //Draw the Third Image of Stalagmite
 image(Stalagmite, 700, 480, 200, 300);
 //Draw the Fourth Image of Stalagmite
 image(Stalagmite, 950, 480, 200, 300);
 //Make the Bird Fly (Flap)
 BirdY = BirdY - BirdSpeed;

 //Statements for Hit Detection

 //Hit Detection Stalactite #1
 if (BirdX > 150 && BirdY < 370 && BirdX < 400) {
   BirdX = 100;
   BirdY = 500;
 }
 //Hit Detection Stalactite #2
 if (BirdX > 460 && BirdY < 370 && BirdX < 660) {
   BirdX = 100;
   BirdY = 500;
 }
 //Hit Detection Stalactite #3
 if (BirdX > 840 && BirdY < 370 && BirdX < 1100) {
   BirdX = 100;
   BirdY = 500;
 }
 //Hit Detection Stalagmite #1
 if (BirdX > 150 && BirdY > 450 && BirdX < 400) {
   BirdX = 100;
   BirdY = 500;
 }
 //Hit Detection Stalagmite #2
 if (BirdX > 440 && BirdY > 430 && BirdX < 700) {
   BirdX = 100;
   BirdY = 500;
 }
 //Hit Detection Stalagmite #3
 if (BirdX > 700 && BirdY > 430 && BirdX < 900) {
   BirdX = 100;
   BirdY = 500;
 }
 //Hit Detection Stalagmite #4
 if (BirdX > 800 && BirdY > 430 && BirdX < 1150) {
   BirdX = 100;
   BirdY = 500;
 }
 //Hit Detection: Win Condition
 if (BirdX > 1000) {
   textSize(70);
   text("Congratulations, You Won!", 100, 400);
   fill(0, 200, 0);
   BirdX = 100;
   BirdY = 500;
 }
 //Hit Detection: When Bird goes off (upwards) Y Axis 'reset to original position
 if (BirdY < 1){
   BirdY = 100;
   BirdY = 500;
 }
  //Hit Detection: When Bird goes off (downwards) Y Axis 'reset to original position
  if (BirdY > 700){
    BirdX = 100;
    BirdY = 500;
  }
}
//Make the Commands that Trigger movement when 'insert letter' key is pressed
void keyPressed() {
 //Makes the Bird travel upward and to the side slightly when 'W' is Pressed
 if (key == 'w') {
   BirdSpeed = 3;
   BirdX = BirdX +10;
 }
 //Makes the Bird travel downward and to the side slightly when 'S' is pressed
 if (key == 's') {
   BirdSpeed = -3;
   BirdX = BirdX+10;
 }
}
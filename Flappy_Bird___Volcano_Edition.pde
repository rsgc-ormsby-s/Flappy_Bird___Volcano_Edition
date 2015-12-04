//Purpose: To create flappy bird

//Name: Simon Ormsby

//Global Variables and Setting Initial Values

PImage Bird; 
PImage Volcano;
PImage Stalactite;
PImage Stalagmite;
float BirdY = 500;
float BirdSpeed = 0;
float BirdX = 100;
float gravity = 0.0005; 
float BirdA = 1;


//Setup
void setup() {
  //Creates the Canvas
  size(1500, 1500);
  //Load the Images
  Bird = loadImage("FlappyBird.png"); //Loading the Flappy Bird Image
  Volcano = loadImage("Volcano.jpg"); //Loading the Flappy Bird Background
  Stalactite = loadImage("stalacite.png"); //Loading the Stalacite Image
  Stalagmite = loadImage("Stalagmite.png"); // Loading the Stalagmite Image
}

void draw() {
  //Draw the Image of the Volcano Background
  image(Volcano, 1, 1, 1500, 800);
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
}

void keyPressed(){
//Makes the Bird travel upward and to the side slightly when 'W' is Pressed
 if (key == 'w'){
  BirdSpeed = 3;
  BirdX = BirdX +10;
   }
   //Makes the Bird travel downward and to the side slightly when 'S' is pressed
if (key == 's'){
  BirdSpeed = -3;
  BirdX = BirdX+10;
}
 
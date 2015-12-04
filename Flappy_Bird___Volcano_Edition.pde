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
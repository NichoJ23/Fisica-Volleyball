import fisica.*;
import java.lang.System;

color blue = #3293E0;
color darkBlue = #14278E;
color red = #E03B32;
color darkRed = #930909;
color yellow = #E8E460;
color black = #000000;

boolean wKey, aKey, sKey, dKey, spaceKey, upKey, downKey, rightKey, leftKey, zeroKey;

FWorld world;
FBox leftPlayer;
FBox rightPlayer;
FBox leftGround;
FBox rightGround;
FBox net;
FCircle ball;

int leftScore;
int rightScore;

long pauseTimer;

PFont font;

int playerSpeed;

void setup() {
  size(800, 600);
  
  textAlign(CENTER, CENTER);
  
  font = createFont("Agbalumo-Regular.ttf", 100);
  textFont(font);
  
  createWorld();
  createPlayers();
  createCourt();
  createBall();
  
  pauseTimer = 0;
}

void draw() {
  background(yellow);
  
  if (System.currentTimeMillis() > pauseTimer + 500) {
    updatePlayers();
    world.step();
    
    checkForScore();
  }
  
  drawScore();
  world.draw();
}

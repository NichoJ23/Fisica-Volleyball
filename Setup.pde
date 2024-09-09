void createWorld() {
  Fisica.init(this);
  world = new FWorld();
  world.setGravity(0, 980);
  //world.setEdges();
}

void createPlayers() {
  leftPlayer = new FBox(100, 100);
  leftPlayer.setPosition(200, 400);
  leftPlayer.setGrabbable(false);
  
  leftPlayer.setStroke(0);
  leftPlayer.setStrokeWeight(0);
  leftPlayer.setFillColor(blue);
  
  leftPlayer.setDensity(0.2);
  leftPlayer.setFriction(1);
  leftPlayer.setRestitution(0.2);
  
  
  rightPlayer = new FBox(100, 100);
  rightPlayer.setPosition(600, 400);
  rightPlayer.setGrabbable(false);
  
  rightPlayer.setStroke(0);
  rightPlayer.setStrokeWeight(0);
  rightPlayer.setFillColor(red);
  
  rightPlayer.setDensity(0.2);
  rightPlayer.setFriction(1);
  rightPlayer.setRestitution(0.2);
  
  world.add(leftPlayer);
  world.add(rightPlayer);
}

void createBall() {
  int startX = width/4 + (int)random(2) * width/2;
  ball = new FCircle(40);
  ball.setPosition(startX, 250);
  ball.setGrabbable(false);
  
  ball.setStrokeWeight(0);
  ball.setFillColor(black);
  
  ball.setFriction(0.5);
  ball.setDensity(0.5);
  ball.setRestitution(1);
  
  world.add(ball);
}

void createCourt() {
  leftGround = new FBox(400, 100);
  leftGround.setPosition(width/4, 550);
  leftGround.setGrabbable(false);
  
  leftGround.setStrokeWeight(0);
  leftGround.setFillColor(darkBlue);
  
  leftGround.setStatic(true);
  leftGround.setFriction(1);
  
  rightGround = new FBox(width/2, 100);
  rightGround.setPosition(width*3/4, 550);
  rightGround.setGrabbable(false);
  
  rightGround.setStrokeWeight(0);
  rightGround.setFillColor(darkRed);
  
  rightGround.setStatic(true);
  rightGround.setFriction(1);
  
  net = new FBox(30, 150);
  net.setPosition(width/2, 425);
  net.setGrabbable(false);
  
  net.setStrokeWeight(0);
  net.setFillColor(black);
  
  net.setStatic(true);
  net.setFriction(0);
  
  FBox leftEdge = new FBox(2, height);
  leftEdge.setStatic(true);
  leftEdge.setGrabbable(false);
  leftEdge.setFriction(0);
  leftEdge.setPosition(-2, height/2);
  
  FBox rightEdge = new FBox(2, height);
  rightEdge.setStatic(true);
  rightEdge.setGrabbable(false);
  rightEdge.setFriction(0);
  rightEdge.setPosition(width + 2, height/2);
  
  FBox topEdge = new FBox(width, 2);
  topEdge.setStatic(true);
  topEdge.setGrabbable(false);
  topEdge.setFriction(0);
  topEdge.setPosition(width / 2, -2);
  
  world.add(leftGround);
  world.add(rightGround);
  world.add(net);
  world.add(leftEdge);
  world.add(rightEdge);
  world.add(topEdge);
}

void reset() {
  leftPlayer.setPosition(width/4, 400);
  leftPlayer.setRotation(0);
  leftPlayer.setVelocity(0, 0);
  leftPlayer.setAngularVelocity(0);
  
  rightPlayer.setPosition(width*3/4, 400);
  rightPlayer.setRotation(0);
  rightPlayer.setVelocity(0, 0);
  rightPlayer.setAngularVelocity(0);
  
  int ballX = width/4 + (int)random(2) * width/2;
  ball.setPosition(ballX, 250);
  ball.setRotation(0);
  ball.setVelocity(0, 0);
  ball.setAngularVelocity(0);
  
  pauseTimer = System.currentTimeMillis();
}

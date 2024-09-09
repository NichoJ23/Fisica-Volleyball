void updatePlayers() {
  float leftVY = leftPlayer.getVelocityY();
  if (aKey) leftPlayer.setVelocity(-300, leftVY);
  if (dKey) leftPlayer.setVelocity(300, leftVY);
  
  float leftVX = leftPlayer.getVelocityX();
  if (wKey && (hitsGround(leftPlayer, leftGround) || hitsGround(leftPlayer, rightGround))) {
    leftPlayer.setVelocity(leftVX, -600);
  }
  
  if (sKey || spaceKey) {
    leftPlayer.setAngularVelocity(10);
  }
  
  float rightVY = rightPlayer.getVelocityY();
  if (leftKey) rightPlayer.setVelocity(-300, rightVY);
  if (rightKey) rightPlayer.setVelocity(300, rightVY);
  
  float rightVX = rightPlayer.getVelocityX();
  if (upKey && (hitsGround(rightPlayer, leftGround) || hitsGround(rightPlayer, rightGround))) {
    rightPlayer.setVelocity(rightVX, -600);
  }
  
  if (downKey || zeroKey) {
    rightPlayer.setAngularVelocity(-10);
  }
}

boolean hitsGround(FBody body, FBox ground) {
  
  ArrayList<FContact> contacts = body.getContacts();
  for (FContact c: contacts) {
    if (c.contains(ground)) return true;
  }
  
  return false;
}

void checkForScore() {
  if (hitsGround(ball, leftGround)) {
    rightScore++;
    reset();
  }
  
  if (hitsGround(ball, rightGround)) {
    leftScore++;
    reset();
  }
}

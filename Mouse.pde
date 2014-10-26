//Farbe selectedCircle;


void mousePressed() {

    for(int i = 0; i < chooser.size(); i++){
      if ( overCircle(chooser.get(i).circleX, chooser.get(i).circleY, 50) ) {
        chooser.get(i).clicked();
      }
    }
  
}

boolean overCircle(float x, float y, int diameter) {
  float disX = x - mouseX;
  float disY = y - mouseY;
  if (sqrt(sq(disX) + sq(disY)) < diameter/2 ) {
    return true;
  } else {
    return false;
  }
}

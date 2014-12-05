ArrayList<Farbe> chooser;

ArrayList<ArrayList<Farbe>> guesses = new ArrayList<ArrayList<Farbe>>();


class Board{
  int numCol = 0;

  
 Board(){
  chooser = new ArrayList<Farbe>();
  
  chooser.add(new Farbe(200, 200, 200));
  chooser.add(new Farbe(200, 000, 000));
  chooser.add(new Farbe(000, 000, 200));
  chooser.add(new Farbe(200, 000, 200));
  chooser.add(new Farbe(255, 204, 000));
  chooser.add(new Farbe(255, 104, 000));
  chooser.add(new Farbe(000, 200, 200));
  chooser.add(new Farbe(000, 200, 000));
  
  numCol = chooser.size();
  float w = (300/(numCol));
  float h = 650;
  int temp = 15;
  
  for(int i = 0; i < numCol; i++){
    chooser.get(i).initFarbe(w+temp, h);
    temp+=50;
  }
  
 }
 void drawMe(){
   noStroke();
   for(int i = 0; i < numCol; i++){
    fill(chooser.get(i).selectFarbe);
    ellipse(chooser.get(i).circleX, chooser.get(i).circleY, 40, 40);
   }
   
  //displays return button
  stroke(0);
  fill(255);
  ellipse(480, 650, 38, 38);
  fill(0);
  textSize(24);
  text("<",470,658);
  noStroke();
 }
 
 void displayGuesses(){
  
  int y = 580;
  int x;
  int temp;
  
  for(int i = 0; i < guesses.size(); i++){
   x = 100;
   temp = 60;
                       
   for(int j = 0; j < guesses.get(i).size(); j++){       
         
     /*displays crosses
     PROBLEMS: 
     1.  crosses need to stay
     2.  cross not displayed on last selected colour
     3.  cross displayed on non existing field in front of first selected colour*/  
     if (mouseX >= x-15 && mouseX <= x+15 && 
         mouseY >= y-15 && mouseY <= y+15){
         fill(0);
         textSize(20);
         text("x",x-6,y+5);
      }
      
     Farbe currentFarbe = guesses.get(i).get(j);
     fill(currentFarbe.selectFarbe);      
     x = x + temp;
     ellipse(x, y, 30, 30);
     
   }
   y = y - 40;
  }
 }
 
 void displayAnswers(){
   int y = 580;
   int x;
   int temp;
   
   ArrayList<ArrayList<Integer>> answers = p1.hereYouGo();
   //println(answers.size());
   for(int i = 0; i < answers.size(); i++){
    x = 25;
    temp = 20;
    for(int j = 0; j < answers.get(i).size(); j++){
      if(answers.get(i).get(j).equals(2)){
        fill(0);
        ellipse(x,y,15,15);
      }
      else if(answers.get(i).get(j).equals(1)){
        fill(255);
        stroke(0);
        ellipse(x,y,15,15);
        noStroke();
      }
      x = x + temp;
    }
      y = y - 40;
   }
 }
 
}

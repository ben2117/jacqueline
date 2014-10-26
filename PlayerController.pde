class PlayerController{
  int guess = 0;
  int turn = 0;
  
 PlayerController(){
   ArrayList<Farbe> raten = new ArrayList<Farbe>();
   guesses.add(raten);
   
 };
 
 void pickColor(Farbe pickedColor){
   guesses.get(turn).add(pickedColor);
   guess++;
   checkGuess();
 }
 
 void checkGuess(){
   print(guess);
  if(guess > 4){
      guess = 0;
      p1.check(turn);
      turn++;
      ArrayList<Farbe> raten = new ArrayList<Farbe>();
      guesses.add(raten);
  }
 
 }
 
}

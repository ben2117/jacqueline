class AI{
 
  ArrayList<Farbe> aiPicks = new ArrayList<Farbe>();
  ArrayList<ArrayList<Integer>> answer = new ArrayList<ArrayList<Integer>>();
  
  
  ////initalise AI
  AI(ArrayList<Farbe> chooser){
    for(int i = 0; i < 5; i++){
      float x = (random(1, chooser.size()));
      int y = (int)x;
      
      boolean alreadyPicked = false;
      
      for(int j = 0; j < aiPicks.size(); j++){
        if(chooser.get(y).equals(aiPicks.get(j))){
         alreadyPicked = true; 
        }
      }
      
      if(alreadyPicked == true){
       i--; 
      } else {
        aiPicks.add(chooser.get(y));
        println((int)x);
      }
    }
  }
  
  int aiTurn = -1;
  
  void check(int turn){
    //if the player is up to a new turn, create another answer row
     if(aiTurn < turn){
      ArrayList<Integer> newTurn = new ArrayList<Integer>();
      answer.add(newTurn);
      aiTurn++;
    }
    
    ArrayList<Farbe> theTurn = guesses.get(turn);
   
    for(int i = 0; i < theTurn.size(); i++){
     boolean found = false;
     for(int j = 0; j < aiPicks.size(); j++){
      if(i == j && theTurn.get(i).equals(aiPicks.get(j))){
        answer.get(aiTurn).add(0, 2);
      }
      else if(theTurn.get(i).equals(aiPicks.get(j))){
       found = true;
      }
     }
     if(found){
        answer.get(aiTurn).add(1);
     }
      
    }
  }
  
  public ArrayList<ArrayList<Integer>> hereYouGo(){
   return answer;
  }
  
  
  
}

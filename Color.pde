class Farbe{
   color selectFarbe;
   float circleX, circleY;
   //float circleSize = 50;
   
   void initFarbe(float x, float y){
     circleX = x;
     circleY = y;
     
   }
   Farbe(int one, int two, int three){
      selectFarbe = color(one, two, three);
   }
   
   void clicked(){
    println("you clicked " + selectFarbe);
    player.pickColor(this);
   }
}

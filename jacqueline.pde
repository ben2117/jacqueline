PlayerController player;
Board board;
AI p1;


void setup() {
  size(520, 700);
  smooth();

 /* if (frame != null) {
    frame.setResizable(true);
  } */

  board = new Board();
  p1 = new AI(chooser);
  player = new PlayerController();
}

void draw() {
  background(255, 255, 255);
  board.drawMe();
  board.displayGuesses();
  board.displayAnswers();
}


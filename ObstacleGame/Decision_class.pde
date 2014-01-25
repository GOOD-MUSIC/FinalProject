class Decision {
  String question;
  int rect1x;
  int rect1y;
  int rectw;
  int recth;
  int rect2x;
  int rect2y;
  String rect1text;
  String rect2text;
  int questionx;
  int questiony;
  int size;

  Decision() {
    size = 100;
    rect1x = 100;
    rect1y = 400;
    rectw = 400;
    recth = 100;
    rect2x = 700;
    rect2y = 400;
    questionx = width/2;
    questiony = 100;
    question = "hi";
    rect1text = "hi";
    rect2text = "hi";
  }

  void display() {
    rectMode(CORNER);
    if (kanye==true) {
      background(kanyeBackground);
      question = "Sway has just asked you why you don't \n empower yourself and do it yourself.  \n What do you say?";
      rect1text = "YOU AIN'T GOT THE ANSWERS!";
      rect2text = "Good idea dawg!";
    }
    if (kim==true) {
      background(kimBackground);
    }
    if (taylor==true) {
      background(taylorBackground);
    }
    if (miley==true) {
      background(mileyBackground);
    }
    textAlign(CENTER);
    fill(360);
    rect(rect1x, rect1y, rectw, recth);
    rect(rect2x, rect2y, rectw, recth);
    fill(0);
    textSize(size);
    text(question, questionx, questiony);
    textSize(size/2);
    text(rect1text, rect1x + rectw/2, rect1y + recth/2);
    text(rect2text, rect2x + rectw/2, rect2y + recth/2);
    rectMode(CENTER);
  }
}


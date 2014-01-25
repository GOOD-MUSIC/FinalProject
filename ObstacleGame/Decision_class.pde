class Decision {
  String question;
  int rect1x;
  int rect1y;
  int rect1w;
  int rect2w;
  int recth;
  int rect2x;
  int rect2y;
  String rect1text;
  String rect2text;
  int questionx;
  int questiony;
  int size;

  Decision() {
    size = 50;
    rect1x = 100;
    rect1y = 400;
    rect1w = 400;
    rect2w = 250;
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
      question = "Your baby is about to be born. \n What do you name it?";
      rect1text = "North";
      rect2text = "Shontelle";
    }
    if (taylor==true) {
      background(taylorBackground);
      question = "You just broke up with Harry Styles. \n What do you do?";
      rect1text = "Write a song about it";
      rect2text = "Move on";
    }
    if (miley==true) {
      background(mileyBackground);
      question = "Liam Hemsworth broke off your \n engagement. What do you do?";
      rect1text = "Get a haircut";
      rect2text = "Write a song about it";
    }
    textAlign(CENTER);
    fill(360);
    if (taylor) {
      fill(57, 10, 100);
    }
    if (miley) {
      fill(275, 100, 100);
    }
    rect(rect1x, rect1y, rect1w, recth);
    rect(rect2x, rect2y, rect2w, recth);
    fill(0);
    textSize(size);
    if (kanye) {
      fill(360);
    }
    if (kim) {
      fill(314, 100, 100);
    }
    if (taylor) {
      fill(57, 100, 100);
    }
    text(question, questionx, questiony);
    textSize(size/2);
    if (kanye) {
      fill(0);
    }
    if (kim) {
      fill(314, 100, 100);
    }
    if (taylor) {
      fill(345, 100, 100);
    }
    if (miley) {
      fill(360);
    }
    text(rect1text, rect1x + rect1w/2, rect1y + recth/2);
    text(rect2text, rect2x + rect2w/2, rect2y + recth/2);
    if (kanye) {
      if (mouseX >= rect1x && mouseX<= rect1x+rect1w && mouseY >= rect1y && mouseY <= rect1y+recth) {
        fill(0);
        rect(rect1x, rect1y, rect1w, recth);
        fill(360);
        text(rect1text, rect1x + rect1w/2, rect1y + recth/2);
      }
      if (mouseX >= rect2x && mouseX<= rect2x+rect2w && mouseY >= rect2y && mouseY <= rect2y+recth) {
        fill(0);
        rect(rect2x, rect2y, rect2w, recth);
        fill(360);
        text(rect2text, rect2x + rect2w/2, rect2y + recth/2);
      }
    }
    if (kim) {
      if (mouseX >= rect1x && mouseX<= rect1x+rect1w && mouseY >= rect1y && mouseY <= rect1y+recth) {
        fill(314, 100, 100);
        rect(rect1x, rect1y, rect1w, recth);
        fill(360);
        text(rect1text, rect1x + rect1w/2, rect1y + recth/2);
      }
      if (mouseX >= rect2x && mouseX<= rect2x+rect2w && mouseY >= rect2y && mouseY <= rect2y+recth) {
        fill(314, 100, 100);
        rect(rect2x, rect2y, rect2w, recth);
        fill(360);
        text(rect2text, rect2x + rect2w/2, rect2y + recth/2);
      }
    }
    if (taylor) {
      if (mouseX >= rect1x && mouseX<= rect1x+rect1w && mouseY >= rect1y && mouseY <= rect1y+recth) {
        fill(345, 100, 100);
        rect(rect1x, rect1y, rect1w, recth);
        fill(57, 10, 100);
        text(rect1text, rect1x + rect1w/2, rect1y + recth/2);
      }
      if (mouseX >= rect2x && mouseX<= rect2x+rect2w && mouseY >= rect2y && mouseY <= rect2y+recth) {
        fill(345, 100, 100);
        rect(rect2x, rect2y, rect2w, recth);
        fill(57, 10, 100);
        text(rect2text, rect2x + rect2w/2, rect2y + recth/2);
      }
    }
     if (miley) {
      if (mouseX >= rect1x && mouseX<= rect1x+rect1w && mouseY >= rect1y && mouseY <= rect1y+recth) {
        fill(360);
        rect(rect1x, rect1y, rect1w, recth);
        fill(275, 100, 100);
        text(rect1text, rect1x + rect1w/2, rect1y + recth/2);
      }
      if (mouseX >= rect2x && mouseX<= rect2x+rect2w && mouseY >= rect2y && mouseY <= rect2y+recth) {
        fill(360);
        rect(rect2x, rect2y, rect2w, recth);
        fill(275, 100, 100);
        text(rect2text, rect2x + rect2w/2, rect2y + recth/2);
      }
    }
      rectMode(CENTER);
    }
  }


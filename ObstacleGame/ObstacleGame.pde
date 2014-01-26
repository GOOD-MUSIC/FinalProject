ArrayList<Reward> r = new ArrayList<Reward>();
ArrayList<Reward> ro = new ArrayList<Reward>();
ArrayList<Obstacle> o = new ArrayList<Obstacle>();
HealthBar h;
Mover m;
Decision dlevel1;
Decision dlevel2;
int oTime;
int rTime;
boolean start = true;
boolean game = false;
boolean stop = false;
boolean lose = false;
boolean win = false;
boolean pause = false;
boolean restart = false;
boolean instructions = false;
boolean decision1 = false;
boolean decision2 = false;
boolean kanye = false;
boolean kim = false;
boolean taylor = false;
boolean miley = false;
boolean level1 = false;
boolean level2 = false;
boolean level3 = false;
//boolean levelWin1 = false;
//boolean levelWin2 = false;
PImage kanyeBackground1;
PImage kimBackground1;
PImage taylorBackground1;
PImage mileyBackground1;
PImage kanyeBackground2;
PImage kimBackground2;
PImage taylorBackground2;
PImage mileyBackground2;
PImage kanyeBackground3;
PImage kimBackground3;
PImage taylorBackground3;
PImage mileyBackground3;
PImage Kanye;
PImage Kim;
PImage Taylor;
PImage Miley;
PImage StartScreen;
PImage kanyeHead;
PImage kimHead;
PImage taylorHead;
PImage mileyHead;
PImage winScreen;
PImage loseScreen;
int heady = 375;
int kanyex = 200;
int kimx = 400;
int taylorx = 600;
int mileyx = 800;
int headw = 100;
int headh = 100;
int instructionsx = 400;
int instructionsy = 300;
int instructionsw = 200;
int instructionsh = 30;
int playbuttonx = 500;
int playbuttony = 400;
int playbuttonw = 100;
int playbuttonh = 50;
int pausebuttonx = 800;
int pausebuttony = 50;
int pausebuttonw = 100;
int pausebuttonh = 50;
int restartbuttonx;
int restartbuttony;
int restartbuttonw;
int restartbuttonh;
int score = 0;
int scorex = 100;
int scorey = 50;
int kwSize = 50;
PFont font;

void setup() {
  size(1000, 500);
  colorMode(HSB, 360, 100, 100, 100);
  oTime = millis();
  rTime = millis();
  o.add(new Obstacle());
  ro.add(new Reward(width, height-200));
  m = new Mover();
  h = new HealthBar();
  kanyeBackground1 = loadImage("kanyeBackground1.jpg");
  kimBackground1 = loadImage("kimBackground1.jpg");
  taylorBackground1 = loadImage("taylorBackground1.jpg");
  mileyBackground1 = loadImage("mileyBackground1.jpg");
  kanyeBackground2 = loadImage("kanyeBackground2.jpg");
  kimBackground2 = loadImage("kimBackground2.jpg");
  taylorBackground2 = loadImage("taylorBackground2.jpg");
  mileyBackground2 = loadImage("mileyBackground2.jpg");
  kanyeBackground3 = loadImage("kanyeBackground3.jpg");
  kimBackground3 = loadImage("kanyeBackground3.jpg");
  taylorBackground3 = loadImage("taylorBackground3.jpg");
  mileyBackground3 = loadImage("mileyBackground3.jpg");
  dlevel1 = new Decision();
  dlevel2 = new Decision();
  Kanye = loadImage("YeezyCharacter.png");
  Kim = loadImage("KimKardashian.png");
  Taylor = loadImage("SwiftCharacter.png");
  Miley = loadImage("MileyCyrus.png");
  StartScreen = loadImage("hollywood.jpg");
  kanyeHead = loadImage("KanyeHeadShot.jpg");
  kimHead = loadImage("kim head shot.jpg");
  taylorHead = loadImage("taylor headshot.jpg");
  mileyHead = loadImage("miley headshot.jpg");
  winScreen = loadImage("winTemp.jpg");
  loseScreen = loadImage("loseTemp.png");
  restartbuttonx = width/2;
  restartbuttony = 110;
  restartbuttonw = 100;
  restartbuttonh = 50;
  font = loadFont("FinalProjectFont2014.vlw");
}

void draw() {
  textFont(font);
  if (start == true) {
    background(StartScreen);
    fill(0);
    rect(instructionsx, instructionsy, instructionsw, instructionsh);
    textAlign(CENTER);
    textSize(30);
    fill(0, 0, 100);
    text("Welcome To...", 150, 75);
    textSize(15);
    text("INSTRUCTIONS", 500, 320);
    fill(0);
    String p = "Choose a Player:";
    text(p, 50, heady+25, 100, 100);
    rectMode(CORNER);
    imageMode(CORNER);
    image(kanyeHead, kanyex, heady);
    image(kimHead, kimx, heady);
    image(taylorHead, taylorx, heady);
    image(mileyHead, mileyx, heady);
    restart();
  }

  if (instructions == true) {
    background(0);
    fill(0, 0, 100);
    textAlign(CENTER);
    textSize(25);
    text("HOW TO PLAY: \n Choose your favorite celebrity. \n Jump and move to collect bonuses and avoid obstacles. \n Use the 'a', 's', 'd', and 'w' keys to control your player. \n a-move left; s-move down; d-move right; w-jump up \n Increase your score to 40 before the health bar reaches 0 to win the game! \n HAVE FUN.", width/2, 50);
    rectMode(CENTER);
    rect(playbuttonx, playbuttony, playbuttonw, playbuttonh);
    fill(0);
    text("PLAY", width/2, height-100);
  }
  if (game == true) {
    checkbackground();
    fill(0, 0, 190);
    text("Score: " + score, scorex, scorey);
    if (millis() - rTime >= 3000) {
      rTime = millis();
      r.add(new Reward(width, height-50));
    }
    if (millis() - oTime >= 7500) {
      oTime = millis();
      o.add(new Obstacle());
      ro.add(new Reward(width, height-200));
    }
    m.display();
    m.move();
    h.display();
    for (int d = r.size()-1; d>=0; d--) {
      Reward rew = r.get(d);
      rew.display();
      rew.move();
      if (dist(rew.loc.x, 0, m.loc.x, 0) <= 90 && dist(0, rew.loc.y, 0, m.loc.y) <= 125) {
        r.remove(d);
        score+=1;
      }
    }
    for (int i = o.size()-1; i>=0; i--) {
      Obstacle obs = o.get(i);
      obs.display();
      obs.move();
      if (dist(obs.loc.x, 0, m.loc.x, 0) <= 127.5 && dist(0, obs.loc.y, 0, m.loc.y) <= 162.5) {
        h.health -= .5;
      }
    }
    for (int j = ro.size()-1; j>=0; j--) {
      Reward reward = ro.get(j);
      reward.display();
      reward.move();
      if (dist(reward.loc.x, 0, m.loc.x, 0) <= 90 && dist(0, reward.loc.y, 0, m.loc.y) <=125) {
        ro.remove(j);
        score+=1;
      }
    }
    if (h.health <= 0) {
      game = false;
      lose = true;
    }
    if (score >= 60) {
      game = false;
      win = true;
    }
    fill(240, 100, 100);
    rectMode(CENTER);
    rect(pausebuttonx, pausebuttony, pausebuttonw, pausebuttonh);
    fill(360);
    text("Pause", width-200, 60);
    if ( score == 10 && game == true && level1 == true) {
      game = false;
      level1 = false;
      decision1 = true;
    }
    if (score == 30 && game == true && level2 == true) {
      game = false;
      level2 = false;
      decision2 = true;
    }
  }
  if (decision1 == true) {
    dlevel1.display();
    for (int j = ro.size()-1; j>=0; j--) {
      ro.remove(j);
    }
    for (int j = o.size()-1; j>=0; j--) {
      o.remove(j);
    }
    for (int j = r.size()-1; j>=0; j--) {
      r.remove(j);
    }
    m.loc.set(m.x/2, height-m.y/2);
  }
  if (decision2 == true) {
    dlevel2.display();
    for (int j = ro.size()-1; j>=0; j--) {
      ro.remove(j);
    }
    for (int j = o.size()-1; j>=0; j--) {
      o.remove(j);
    }
    for (int j = r.size()-1; j>=0; j--) {
      r.remove(j);
    }
    m.loc.set(m.x/2, height-m.y/2);
  }
  if (pause == true) {
    checkbackground();
    fill(240, 80, 80, 75);
    rect(width/2, height/2, width, height);
    fill(0);
    textSize(50);
    text("GAME PAUSED", width/2, height/2);
    rectMode(CENTER);
    fill(0, 0, 100);
    rect(playbuttonx, playbuttony, playbuttonw, playbuttonh);
    fill(0);
    textSize(30);
    text("PLAY", width/2, height-90);
    textSize(20);
    fill(0, 0, 100);
    rectMode(CENTER);
    rect(restartbuttonx, restartbuttony, restartbuttonw, restartbuttonh);
    fill(0);
    text("RESTART", restartbuttonx, restartbuttony+5);
  }

  if (restart == true) {
    restart();
  }

  if (lose == true) {
    background(loseScreen);
    textAlign(CENTER);
    textSize(40);
    fill(0);
    text("You lost. I guess Hollywood's not for everyone.", width/2, height-100);
    fill(0, 0, 100);
    rectMode(CENTER);
    rect(restartbuttonx, restartbuttony, restartbuttonw, restartbuttonh);
    fill(0);
    textSize(25);
    text("RESTART", restartbuttonx, restartbuttony+5);
  }
  if (win == true) {
    background(winScreen);
    textAlign(CENTER);
    textSize(40);
    fill(0, 0, 100);
    text("Congratulations! You have made it in Hollywood!", width/2, height-100);
    fill(0, 0, 100);
    rectMode(CENTER);
    rect(restartbuttonx, restartbuttony, restartbuttonw, restartbuttonh);
    fill(0);
    textSize(25);
    text("RESTART", restartbuttonx, restartbuttony+5);
  }
}

void mousePressed() {
  if (decision1 == true && mouseX >= dlevel1.rect1x && mouseX<= dlevel1.rect1x+dlevel1.rect1w && mouseY >= dlevel1.rect1y && mouseY <= dlevel1.rect1y+dlevel1.recth) {
    decision1 = false;
    game = true;
    level2 = true;
    score+= 10;
  }
  if (decision1 == true && mouseX >= dlevel1.rect2x && mouseX<= dlevel1.rect2x+dlevel1.rect2w && mouseY >= dlevel1.rect2y && mouseY <= dlevel1.rect2y+dlevel1.recth) {
    decision1 = false;
    game = true;
    level2 = true;
    h.health-=200;
  }
  if (decision2 == true && mouseX >= dlevel2.rect1x && mouseX<= dlevel2.rect1x+dlevel2.rect1w && mouseY >= dlevel2.rect1y && mouseY <= dlevel2.rect1y+dlevel2.recth) {
    decision2 = false;
    game = true;
    level3 = true;
    score+= 20;
  }
  if (decision2 == true && mouseX >= dlevel2.rect2x && mouseX<= dlevel2.rect2x+dlevel2.rect2w && mouseY >= dlevel2.rect2y && mouseY <= dlevel2.rect2y+dlevel2.recth) {
    decision2 = false;
    game = true;
    level3 = true;
    h.health-=400;
  }
  if (start==true && mouseX<kanyex+headw && mouseX>kanyex && mouseY<heady+headh && mouseY>heady) {
    game = true;
    kanye = true;
    start = false;
    level1 = true;
    restart = false;
  }
  if (start==true && mouseX<kimx+headw && mouseX>kimx && mouseY<heady+headh && mouseY>heady) {
    game = true;
    kim = true;
    start = false;
    level1 = true;
    restart = false;
  }
  if (start==true && mouseX<taylorx+headw && mouseX>taylorx && mouseY<heady+headh && mouseY>heady) {
    game = true;
    taylor = true;
    start = false;
    level1 = true;
    restart = false;
  }
  if (start==true && mouseX<mileyx+headw && mouseX>mileyx && mouseY<heady+headh && mouseY>heady) {
    game = true;
    miley = true;
    start = false;
    level1 = true;
    restart = false;
  }
  if (start==true && mouseX<instructionsx+instructionsw && mouseX>instructionsx && mouseY<instructionsy+instructionsh && mouseY>instructionsy) {
    instructions = true;
    start = false;
  }
  if (instructions==true && mouseX<playbuttonx+playbuttonw/2 && mouseX>playbuttonx-playbuttonw/2 && mouseY<playbuttony+playbuttonh/2 && mouseY>playbuttony-playbuttonh/2) {
    instructions = false;
    start = true;
  }
  if (game == true && mouseX < pausebuttonx + pausebuttonw/2 && mouseX > pausebuttonx - pausebuttonw/2 && mouseY < pausebuttony + pausebuttonh/2 && mouseY > pausebuttony-pausebuttonh/2) {
    game = false;
    pause = true;
  }
  if (pause==true && mouseX<playbuttonx+playbuttonw/2 && mouseX>playbuttonx-playbuttonw/2 && mouseY<playbuttony+playbuttonh/2 && mouseY>playbuttony-playbuttonh/2) {
    pause = false;
    game = true;
  }
  //  if (levelWin1==true && mouseX<playbuttonx+playbuttonw/2 && mouseX>playbuttonx-playbuttonw/2 && mouseY<playbuttony+playbuttonh/2 && mouseY>playbuttony-playbuttonh/2) {
  //    levelWin1 = false;
  //    decision1 = true;
  //  }
  //  if (levelWin2==true && mouseX<playbuttonx+playbuttonw/2 && mouseX>playbuttonx-playbuttonw/2 && mouseY<playbuttony+playbuttonh/2 && mouseY>playbuttony-playbuttonh/2) {
  //    levelWin2 = false;
  //    decision2 = true;
  //  }
  if (pause==true && mouseX<restartbuttonx+restartbuttonw/2 && mouseX>restartbuttonx-restartbuttonw/2 && mouseY<restartbuttony+restartbuttonh/2 && mouseY>restartbuttony-restartbuttonh/2) {
    restart = true;
    game = false;
    pause = false;
    start = true;
  }
  if (lose==true && mouseX<restartbuttonx + restartbuttonw/2 && mouseX>restartbuttonx - restartbuttonw/2 && mouseY<restartbuttony + restartbuttonh/2 && mouseY>restartbuttony - restartbuttonh/2) {
    restart = true;
    game = false;
    lose = false;
    start = true;
  }
  if (win==true && mouseX<restartbuttonx + restartbuttonw/2 && mouseX>restartbuttonx - restartbuttonw/2 && mouseY<restartbuttony + restartbuttonh/2 && mouseY>restartbuttony - restartbuttonh/2) {
    restart = true;
    game = false;
    win = false;
    start = true;
  }
}

void restart() {
  start = true;
  game = false;
  stop = false;
  lose = false;
  win = false;
  restart = false;
  pause = false;
  instructions = false;
  decision1 = false;
  decision2 = false;
  kanye = false;
  kim = false;
  taylor = false;
  miley = false;
  level1 = true;
  level2 = false;
  level3 = false;
  score = 0;
  h.health = 1000;
  for (int j = ro.size()-1; j>=0; j--) {
    ro.remove(j);
  }
  for (int j = o.size()-1; j>=0; j--) {
    o.remove(j);
  }
  for (int j = r.size()-1; j>=0; j--) {
    r.remove(j);
  }
  m.loc.set(m.x/2, height-m.y/2);
} 

void checkbackground() {
  if (kanye == true) {
    if (level1 == true) {
      background(kanyeBackground1);
    }
    if (level2 == true) {
      background(kanyeBackground2);
    }
    if (level3 == true) {
      background(kanyeBackground3);
    }
  }
  if (kim == true) {
    if (level1 == true) {
      background(kimBackground1);
    }
    if (level2 == true) {
      background(kimBackground2);
    }
    if (level3 == true) {
      background(kimBackground3);
    }
  }
  if (taylor == true) {
    if (level1 == true) {
      background(taylorBackground1);
    }
    if (level2 == true) {
      background(taylorBackground2);
    }
    if (level3 == true) {
      background(taylorBackground3);
    }
  }
  if (miley == true) {
    if (level1 == true) {
      background(mileyBackground1);
    }
    if (level2 == true) {
      background(mileyBackground2);
    }
    if (level3 == true) {
      background(mileyBackground3);
    }
  }
}


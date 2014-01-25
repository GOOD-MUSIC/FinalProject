ArrayList<Reward> r = new ArrayList<Reward>();
ArrayList<Reward> ro = new ArrayList<Reward>();
ArrayList<Obstacle> o = new ArrayList<Obstacle>();
HealthBar h;
Mover m;
Decision d;
int oTime;
int rTime;
boolean start = true;
boolean game = false;
boolean stop = false;
boolean lose = false;
boolean win = false;
boolean pause = false;
boolean instructions = false;
boolean decision = false;
boolean kanye = false;
boolean kim = false;
boolean taylor = false;
boolean miley = false;
PImage kanyeBackground;
PImage kimBackground;
PImage taylorBackground;
PImage mileyBackground;
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
  d = new Decision();
  kanyeBackground = loadImage("StageBackground.jpg");
  kimBackground = loadImage("JennerBackground.jpg");
  taylorBackground = loadImage("NashvilleBackground.jpg");
  mileyBackground = loadImage("CyrusBackground.jpg");
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
    image(kanyeHead, kanyex, heady);
    image(kimHead, kimx, heady);
    image(taylorHead, taylorx, heady);
    image(mileyHead, mileyx, heady);
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
    if (kanye==true) {
      background(kanyeBackground);
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
    if (score >= 40) {
      game = false;
      win = true;
    }
    fill(240, 100, 100);
    rectMode(CENTER);
    rect(pausebuttonx, pausebuttony, pausebuttonw, pausebuttonh);
    fill(360);
    text("Pause", width-200, 60);
    if ( score>= 2) {
      game = false;
      decision = true;
    }
  }
  if (decision == true) {
    d.display();
  }
  if (pause == true) {
    if (kanye==true) {
      background(kanyeBackground);
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
  }
  if (lose == true) {
    background(loseScreen);
    textAlign(CENTER);
    textSize(40);
    fill(0);
    text("You lost. I guess Hollywood's not for everyone.", width/2, height-100);
  }

  if (win == true) {
    background(winScreen);
    textAlign(CENTER);
    textSize(40);
    fill(0, 0, 100);
    text("Congratulations! You have made it in Hollywood!", width/2, height-100);
  }
}

void mousePressed() {
  //if (decision==true && mouseX >= d.rect1x && mouseX<= d.rect1x+d.rect1w && mouseY >= d.rect1y && mouseY <= d.rect1y+d.recth) {
  //decision = false;
  // game = true;
  //    score+= 1;
  //  }
  //  if (decision==true && mouseX >= d.rect2x && mouseX<= d.rect2x+d.rect2w && mouseY >= d.rect2y && mouseY <= d.rect2y+d.recth) {
  //   decision = false;
  //  game = true;
  //  h.health-=1;
  // }
  if (start==true && mouseX<kanyex+headw && mouseX>kanyex && mouseY<heady+headh && mouseY>heady) {
    game = true;
    kanye = true;
    start = false;
  }
  if (start==true && mouseX<kimx+headw && mouseX>kimx && mouseY<heady+headh && mouseY>heady) {
    game = true;
    kim = true;
    start = false;
  }
  if (start==true && mouseX<taylorx+headw && mouseX>taylorx && mouseY<heady+headh && mouseY>heady) {
    game = true;
    taylor = true;
    start = false;
  }
  if (start==true && mouseX<mileyx+headw && mouseX>mileyx && mouseY<heady+headh && mouseY>heady) {
    game = true;
    miley = true;
    start = false;
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
}


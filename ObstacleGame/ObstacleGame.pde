ArrayList<Reward> r = new ArrayList<Reward>();
ArrayList<Reward> ro = new ArrayList<Reward>();
ArrayList<Obstacle> o = new ArrayList<Obstacle>();
HealthBar h;
Mover m;
int oTime;
int rTime;
float frequency = 100;
int health = 100;
boolean start = true;
boolean game = false;
boolean stop = false;
boolean lose = false;
boolean win = false;
boolean instructions = false;
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

void setup() {
  size(1000, 500);
  colorMode(HSB, 360, 100, 100, 100);
  oTime = millis();
  rTime = millis();
  o.add(new Obstacle());
  ro.add(new Reward(width, height-200));
  m = new Mover();
  h = new HealthBar();
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
}

void draw() {
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
    text("HOW TO PLAY: \n Choose your favorite celebrity. \n Use the 'a', 's', 'd', and 'w' keys to control your player. \n Jump and duck to collect bonuses and avoid obstacles. \n HAVE FUN.", width/2, height/2);
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
    if (millis() - rTime >= 30*frequency) {
      rTime = millis();
      r.add(new Reward(width, height-50));
    }
    if (millis() - oTime >= 75*frequency) {
      oTime = millis();
      o.add(new Obstacle());
      ro.add(new Reward(width, height-200));
      frequency -= 1;
    }

    for (int j = r.size()-1; j>=0; j--) {
      Reward rew = r.get(j);
      rew.display();
      rew.move();
    }
    for (int i = o.size()-1; i>=0; i--) {
      Obstacle obs = o.get(i);
      obs.display();
      obs.move();
      Reward reward = ro.get(i);
      reward.display();
      reward.move();
    }
    m.display();
    m.move();
    h.display();
  }
  if (lose == true) {
   background(loseScreen);
   textAlign(CENTER);
   textSize(40);
   fill(0);
   text("You lost. I guess Hollywood's not for everyone.", width/2, height-100);
  }
  
  if(win == true){
    background(winScreen);
    textAlign(CENTER);
    textSize(40);
    fill(0,0,100);
    text("Congratulations! You have made it in Hollywood!",width/2,height-100);
  }
}

void mousePressed() {
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
}


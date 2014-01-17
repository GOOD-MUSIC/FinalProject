ArrayList<Reward> r = new ArrayList<Reward>();
ArrayList<Reward> ro = new ArrayList<Reward>();
ArrayList<Obstacle> o = new ArrayList<Obstacle>();
HealthBar h;
Mover m;
int oTime;
int rTime;
float frequency = 100;
int directionsx = 400;
int directionsy = 50;
int health = 100;
boolean start = true;
boolean game = false;
boolean stop = false;
boolean kanye = false;
boolean kim = false;
boolean taylor = false;
boolean miley = false;
PImage Kanye;
PImage Kim;
PImage Taylor;
PImage Miley;
PImage StartScreen;
PImage kanyeHead;
PImage kimHead;
PImage taylorHead;
PImage mileyHead;
int heady = 375;
int kanyex = 150;
int kimx = 350;
int taylorx = 550;
int mileyx = 750;
int headw = 100;
int headh = 100;

void setup() {
  size(1000, 500);
  colorMode(HSB, 360, 100, 100, 100);
  oTime = millis();
  rTime = millis();
  o.add(new Obstacle());
  r.add(new Reward(width, height-50));
  ro.add(new Reward(width, height-100));
  m = new Mover();
  h = new HealthBar();
  Kanye = loadImage("YeezyCharacter.png");
  Kim = loadImage("KimKardashian.png");
  Taylor = loadImage("SwiftCharacter.png");
  Miley = loadImage("MileyCyrus.png");
  StartScreen = loadImage("hollywood.jpg");
  kanyeHead = loadImage("KanyeHeadShot.jpg");
  kimHead = loadImage("kim head shot.jpg");
  taylorHead = loadImage("taylor headshot.jpg");
  mileyHead = loadImage("miley headshot.jpg");
}

void draw() {
  if (start == true) {
    background(StartScreen);
    textAlign(CENTER);
    textSize(30);
    fill(0,0,100);
    text("Welcome To...",150,175);
    rectMode(CORNER);
    image(kanyeHead, kanyex, heady);
    image(kimHead, kimx, heady);
    image(taylorHead, taylorx, heady);
    image(mileyHead, mileyx, heady);
    //    text("HOW TO PLAY \n Choose your favorite celebrity. \n Use the 'a', 's', 'd', and 'w' keys to control your player. \n Jump and duck to collect bonuses and avoid obstacles. \n HAVE FUN.", directionsx, directionsy);
  }
  if (game == true) {
    background(0);
    if (millis() - rTime >= 30*frequency) {
      rTime = millis();
      r.add(new Reward(width, height-50));
    }
    if (millis() - oTime >= 75*frequency) {
      oTime = millis();
      o.add(new Obstacle());
      ro.add(new Reward(width, height-100));
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
}

void mousePressed() {
  if (start==true && mouseX<kanyex+headw && mouseX>kanyex && mouseY<heady+headh && mouseY>heady) {
    game = true;
    kanye = true;
  }
  if (start==true && mouseX<kimx+headw && mouseX>kimx && mouseY<heady+headh && mouseY>heady) {
    game = true;
    kim = true;
  }
  if (start==true && mouseX<taylorx+headw && mouseX>taylorx && mouseY<heady+headh && mouseY>heady) {
    game = true;
    taylor = true;
  }
  if (start==true && mouseX<mileyx+headw && mouseX>mileyx && mouseY<heady+headh && mouseY>heady) {
    game = true;
    miley = true;
  }
}


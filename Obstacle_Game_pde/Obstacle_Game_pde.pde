ArrayList<Reward> r = new ArrayList<Reward>();
ArrayList<Reward> ro = new ArrayList<Reward>();
ArrayList<Obstacle> o = new ArrayList<Obstacle>();
Mover m;
int oTime;
int rTime;
float frequency = 100;
int directionsx = 400;
int directionsy = 50;
int health = 100;
int healthx = 0;
int healthy = 100;
boolean start = true;
boolean game = false;
boolean stop = false;

boolean kanye = false;
boolean kim = false;
boolean taylor = false;
boolean miley = true;
PImage Kanye;
PImage Kim;
PImage Taylor;
PImage Miley;

void setup() {
  size(1000, 500);
  colorMode(HSB, 360, 100, 100, 100);
  oTime = millis();
  rTime = millis();
  o.add(new Obstacle());
  r.add(new Reward(width, height-50));
  ro.add(new Reward(width, height-100));
  m = new Mover();
  Kanye = loadImage("YeezyCharacter.png");
  Kim = loadImage("KimKardashian.png");
  Taylor = loadImage("SwiftCharacter.png");
  Miley = loadImage("MileyCyrus.png");
}

void draw() {
  //<<<<<<< HEAD
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
<<<<<<< HEAD:Obstacle_Game/Obstacle_Game.pde
  //=======
  if (start == true) {
    background(0);
    textAlign(CENTER);
    textSize(15);
    fill(255);
    text("HOW TO PLAY \n Choose your favorite celebrity. \n Use the 'a', 's', 'd', and 'w' keys to control your player. \n Jump and duck to collect bonuses and avoid obstacles. \n HAVE FUN.", directionsx, directionsy);
    //>>>>>>> origin/Start/End
  }
  if (game == true) {
    if (millis() - oTime >= 100*frequency) {
      oTime = millis();
      o.add(new Obstacle());
      frequency -= .5;
    }
    if (millis() - rTime >= 30*frequency) {
      rTime = millis();
      r.add(new Reward());
    }
    for (int i = o.size()-1; i>=0; i--) {
      Obstacle obs = o.get(i);
      obs.display();
      obs.move();
    }
    for (int j = r.size()-1; j>=0; j--) {
      Reward rew = r.get(j);
      Obstacle obs = o.get(o.size()-1);
      rew.display(obs);
      rew.move();
      //    if (obs.loc.x <= -75) {
      //      o.remove(i);
      //      r.remove(j);
      //    }
    }
    //  for (int i = r.size()-1; i>=0; i--) {
    //    Reward rew = r.get(i);
    //    rew.display();
    //    rew.move();
    //    if (rew.loc.x <= -75) {
    //      r.remove(i);
    //    }
    //  }
    m.display();
    m.move();
    text("Health: " + health, healthx, healthy);
=======
  for (int j = r.size()-1; j>=0; j--) {
    Reward rew = r.get(j);
    rew.display();
    rew.move();
>>>>>>> origin/Game:Obstacle_Game_pde/Obstacle_Game_pde.pde
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
}


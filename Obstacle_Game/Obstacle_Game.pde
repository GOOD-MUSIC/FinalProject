ArrayList<Reward> r = new ArrayList<Reward>();
ArrayList<Obstacle> o = new ArrayList<Obstacle>();
Mover m;
int oTime;
int rTime;
float frequency = 100;

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
  r.add(new Reward());
  m = new Mover();
  Kanye = loadImage("YeezyCharacter.png");
  Kim = loadImage("KimKardashian.png");
  Taylor = loadImage("SwiftCharacter.png");
  Miley = loadImage("MileyCyrus.png");
}

void draw() {
  background(0);
  if (millis() - oTime >= 75*frequency) {
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
}


ArrayList<Reward> r = new ArrayList<Reward>();
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

void setup() {
  size(800, 400);
  colorMode(HSB, 360, 100, 100, 100);
  oTime = millis();
  rTime = millis();
  o.add(new Obstacle());
  r.add(new Reward());
  m = new Mover();
}

void draw() {
  if (start == true) {
    background(0);
    textAlign(CENTER);
    textSize(15);
    fill(255);
    text("HOW TO PLAY \n Choose your favorite celebrity. \n Use the 'a', 's', 'd', and 'w' keys to control your player. \n Jump and duck to collect bonuses and avoid obstacles. \n HAVE FUN.", directionsx, directionsy);
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
  }
}


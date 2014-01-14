ArrayList<Reward> r = new ArrayList<Reward>();
ArrayList<Reward> ro = new ArrayList<Reward>();
ArrayList<Obstacle> o = new ArrayList<Obstacle>();
Mover m;
int oTime;
int rTime;
float frequency = 100;

void setup() {
  size(1000, 500);
  colorMode(HSB, 360, 100, 100, 100);
  oTime = millis();
  rTime = millis();
  o.add(new Obstacle());
  r.add(new Reward(width, height-50));
  ro.add(new Reward(width, height-100));
  m = new Mover();
}

void draw() {
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
}


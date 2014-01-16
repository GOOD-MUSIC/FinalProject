class Reward {
  PVector loc;
  PVector vel;
  int d;

  Reward(float x, float y) {
    loc = new PVector(x,y);
    vel = new PVector(-2, 0);
    d = 30;
  }

  void display() {
    ellipse(loc.x, loc.y, d, d);
  }

  void move() {
    loc.add(vel);
  }
}


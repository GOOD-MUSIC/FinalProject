class Obstacle {
  PVector loc;
  PVector vel;
  int d;

  Obstacle() {
    loc = new PVector(width, height-50);
    vel = new PVector(-2, 0);
    d = 50;
  }

  void display() {
    fill(360, 100, 100);
    ellipse(loc.x, loc.y, d, d);
  }

  void move() {
    loc.add(vel);
  }
}

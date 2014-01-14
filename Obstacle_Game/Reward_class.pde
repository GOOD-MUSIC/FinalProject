class Reward {
  PVector loc;
  PVector vel;
  int d;

  Reward() {
    loc = new PVector(width, height-50);
    vel = new PVector(-2, 0);
    d = 30;
  }

  void display(Obstacle obstacle) {
    if (obstacle.loc.x > loc.x-d/2 && obstacle.loc.x < loc.x + d/2) {
      loc.set(obstacle.loc.x, height-100);
    }
    ellipse(loc.x, loc.y, d, d);
  }

  void move() {
    if (loc.y == height-50) {
      loc.add(vel);
    }
  }
}


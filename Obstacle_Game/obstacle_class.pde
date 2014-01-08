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
    ellipse(loc.x, loc.y, d, d);
  }
  
  void move() {
    loc.add(vel);
    if (loc.x <= 0){
      loc.set(width, height-50);
    }
  }
}

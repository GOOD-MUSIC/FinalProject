class Mover {
  PVector loc;
  PVector up;
  PVector left;
  PVector right;
  PVector down;
  int d;

  Mover() {
    loc = new PVector(d/2, height-25);
    up = new PVector(0,-5);
    left = new PVector(-5, 0);
    right = new PVector(5, 0);
    down = new PVector(0, 5);
    d = 50;
  }

  void display() {
    ellipse(loc.x, loc.y, d, d);
  }
  void move() {
    if (keyPressed == true && key == 'a' && loc.x>0+d/2){
      loc.add(left);
    }
    if (keyPressed == true && key == 'd' && loc.x<width-d/2){
      loc.add(right);
    }
    if (keyPressed == true && key == 'w' && loc.y>0+d/2){
      loc.add(up);
    }
    if (keyPressed == true && key == 's' && loc.y<height-d/2){
      loc.add(down);
    }
  }
}

class Mover {
  PVector loc;
  PVector up;
  PVector left;
  PVector right;
  PVector down;
  int x;
  float y;
  float grav=2.5; 
  float vel = 0;

  Mover() {
    x = 130;
    y = 200;
    loc = new PVector(0, height-y);
    up = new PVector(0, -5);
    left = new PVector(-5, 0);
    right = new PVector(5, 0);
    down = new PVector(0, 5);
  }

  void display() {
    if (kanye == true) {
      image(Kanye, loc.x, loc.y, x, y);
    }
    if (kim == true) {

      image(Kim, loc.x, loc.y, x, y);
    }
    if (taylor == true) {

      image(Taylor, loc.x, loc.y, x, y);
    }
    if (miley == true) {

      image(Miley, loc.x, loc.y, x, y);
    }
  }
  void move() {
    if (keyPressed == true && key == 'a' && loc.x>0) {
      loc.add(left);
    }
    if (keyPressed == true && key == 'd' && loc.x<width-x) {
      loc.add(right);
    }
    if (keyPressed == true && key == 'w' && loc.y>0) {
      loc.add(up);
    }
    if (keyPressed == true && key == 's' && loc.y<height-y) {
      loc.add(down);
    }
    if (loc.y+y<height) {
      vel+=grav;
      loc.y+=vel; 
      vel*=-.9;
    }
  }
}


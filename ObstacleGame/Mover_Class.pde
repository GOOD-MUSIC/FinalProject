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
<<<<<<< HEAD
    loc = new PVector(x/2, height-y/2);
    up = new PVector(0, -5);
=======
    loc = new PVector(0, height-y);
    up = new PVector(0, -200);
>>>>>>> origin/Diya/Game-Tester-Work
    left = new PVector(-5, 0);
    right = new PVector(5, 0);
    down = new PVector(0, 5);
  }

  void display() {
    imageMode(CENTER);
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
    imageMode(CORNER);
  }
  void move() {
    if (keyPressed == true && key == 'a' && loc.x>0+x/2) {
      loc.add(left);
    }
    if (keyPressed == true && key == 'd' && loc.x<width-x/2) {
      loc.add(right);
    }
<<<<<<< HEAD
    if (keyPressed == true && key == 'w' && loc.y>0+y/2) {
=======
    if (keyPressed == true && key == 'w' && loc.y>=300) {
>>>>>>> origin/Diya/Game-Tester-Work
      loc.add(up);
    }
    if (keyPressed == true && key == 's' && loc.y<height-y/2) {
      loc.add(down);
    }
    if (loc.y+y/2<height) {
      vel+=grav;
      loc.y+=vel; 
      vel*=-0.001*(height-y);
    }
  }
}


class Mover {
  PVector loc;
  int d;

  Mover() {
    loc = new PVector(0, height-25);
    d = 50;
  }

  void display() {
    ellipse(loc.x, loc.y, d, d);
  }
  void move() {
    if(loc.y < height-25){
      loc.y+=1;
    }
  }
  void keyPressed() {
    if (key == 'a') {
      loc.x--;
    }
    if (key == 'd') {
      loc.x++;
    }
    if (key == 'w') {
      loc.y-=2;
    }
  }
}


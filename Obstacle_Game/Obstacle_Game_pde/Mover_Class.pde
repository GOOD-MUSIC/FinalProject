class Mover {
  PVector loc;
  int d;
  float g;
  float up;

  Mover() {
    loc = new PVector(d/2, height-25);
    d = 50;
    g = .01;
    up = 5;
  }

  void display() {
    ellipse(loc.x, loc.y, d, d);
  }
  void move() {
    if (loc.y < height-25) {
      loc.y+=1;
      up = 5-g;
    }
    if (keyPressed == true && key == 'a' && loc.x>0+d/2){
      loc.x -=5;
    }
    if (keyPressed == true && key == 'd' && loc.x<width-d/2){
      loc.x+=5;
    }
    if (keyPressed == true && key == 'w' && loc.y>0+d/2){
      loc.y-=up;
    }
    if (keyPressed == true && key == 's' && loc.y<height-d/2){
      loc.y+=5;
    }
  }
}

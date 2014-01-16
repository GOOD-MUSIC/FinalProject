class Mover {
  PVector loc;
  PVector up;
  PVector left;
  PVector right;
  PVector down;
  int d;
  int x;
  int y;

  Mover() {
    loc = new PVector(d/2, height-25);
    d = 150;
    up = new PVector(0,-5);
    left = new PVector(-5, 0);
    right = new PVector(5, 0);
    down = new PVector(0, 5);
    x = 130;
    y = 200;
  }

  void display() {
    if(kanye == true){
     image(Kanye,loc.x,loc.y,x,y); 
    }
    if(kim == true){
     image(Kim,loc.x,loc.y,x,y); 
    }
    if(taylor == true){
     image(Taylor,loc.x,loc.y,x,y); 
    }
    if(miley == true){
     image(Miley,loc.x,loc.y,x,y); 
    }
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

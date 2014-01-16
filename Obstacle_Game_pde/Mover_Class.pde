class Mover {
  PVector loc;
  PVector up;
  PVector left;
  PVector right;
  PVector down;
  int d;

  Mover() {
    loc = new PVector(d/2, height-25);
<<<<<<< HEAD:Obstacle_Game/Mover_Class.pde
    d = 150;
    g = .01;
    up = 5;
=======
    up = new PVector(0,-5);
    left = new PVector(-5, 0);
    right = new PVector(5, 0);
    down = new PVector(0, 5);
    d = 50;
>>>>>>> origin/Game:Obstacle_Game_pde/Mover_Class.pde
  }

  void display() {
    if(kanye == true){
     image(Kanye,loc.x,loc.y,90,190); 
    }
    if(kim == true){
     image(Kim,loc.x,loc.y,150,200); 
    }
    if(taylor == true){
     image(Taylor,loc.x,loc.y,150,225); 
    }
    if(miley == true){
     image(Miley,loc.x,loc.y,150,200); 
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

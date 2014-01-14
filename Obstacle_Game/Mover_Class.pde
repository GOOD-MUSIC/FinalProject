class Mover {
  PVector loc;
  int d;
  float g;
  float up;

  Mover() {
    loc = new PVector(d/2, height-25);
    d = 150;
    g = .01;
    up = 5;
  }

  void display() {
    if(kanye == true){
     image(Kanye,loc.x,loc.y,90,190); 
    }
    if(kim == true){
     image(Kim,loc.x,loc.y,120,180); 
    }
    if(taylor == true){
     image(Taylor,loc.x,loc.y,150,225); 
    }
    if(miley == true){
     image(Miley,loc.x,loc.y,d,d); 
    }
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

Obstacle o;
Mover m;

void setup(){
  size(800,400);
  o = new Obstacle();
  m = new Mover();
}

void draw(){
  background(0);
  o.display();
  o.move();
  m.display();
  m.move();
  m.keyPressed();
  
  
}

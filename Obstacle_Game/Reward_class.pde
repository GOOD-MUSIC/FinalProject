class Reward{
  PVector loc;
  PVector vel;
  int d;
  
  Reward(){
    loc = new PVector(width, height-75);
    vel = new PVector(-2,0);
    d = 25;
  }
  
  void display(Obstacle o){
    if(o.loc.x == loc.x){
      loc.set(width, height-75);
    }
    else{
      loc.set(width, height-30);
    }
    ellipse(loc.x, loc.y, d,d);
  }
  
  void move(){
    loc.add(vel);
  }
}
    

ArrayList<Reward> r = new ArrayList<Reward>();
ArrayList<Obstacle> o = new ArrayList<Obstacle>();
Mover m;
int oTime;
int rTime;
float frequency = 100;

void setup(){
  size(800,400);
  colorMode(HSB, 360, 100, 100, 100);
  oTime = millis();
  rTime = millis();
  o.add(new Obstacle());
  r.add(new Reward());
  m = new Mover();
}

void draw(){
  background(0);
  if(millis() - oTime >= 250*frequency){
    oTime = millis();
    o.add(new Obstacle());
    frequency -= .5;
  }
  if(millis() - rTime >= 50*frequency){
    rTime = millis();
    r.add(new Reward());
  }
  for(int i = o.size()-1; i>=0; i--){
    Obstacle obs = o.get(i);
    obs.display();
    obs.move();
    if(obs.loc.x <= 0){
      o.remove(i);
    }
  }
  for(int i = r.size()-1; i>=0; i--){
    Reward rew = r.get(i);
    rew.display();
    rew.move();
    if(rew.loc.x <= 0){
      r.remove(i);
    }
  }
  m.display();
  m.move();

}

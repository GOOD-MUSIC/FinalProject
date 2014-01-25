class Obstacle {
  PVector loc;
  PVector vel;
  PImage kanyeObstacle;
  PImage kimObstacle;
  PImage taylorObstacle;
  PImage mileyObstacle;

  Obstacle() {
    loc = new PVector(width, height-62.5);
    vel = new PVector(-2, 0);
    kanyeObstacle = loadImage("SwayObstacle.png");
    kimObstacle = loadImage("Kimobstacle.png");
    taylorObstacle = loadImage("HarryStylesObstacle.png");
    mileyObstacle = loadImage("WreckingBallObstacle.png");
  }

  void display() {
    imageMode(CENTER);
    if (kanye==true) {
      image(kanyeObstacle, loc.x, loc.y);
    }
    if (kim==true) {
      image(kimObstacle, loc.x, loc.y);
    }
    if (taylor==true) {
      image(taylorObstacle, loc.x, loc.y);
    }
    if (miley==true) {
      image(mileyObstacle, loc.x, loc.y);
    }
    imageMode(CORNER);
  }

  void move() {
    loc.add(vel);
  }
}

class Obstacle {
  PVector loc;
  PVector vel;
  PImage kanyeObstacle;
  PImage kimObstacle;
  PImage taylorObstacle;
  PImage mileyObstacle;

  Obstacle() {
    loc = new PVector(width, height-125);
    vel = new PVector(-2, 0);
    kanyeObstacle = loadImage("SwayObstacle.png");
    kimObstacle = loadImage("SwayObstacle.png");
    //idk what obstacle belongs to her's---we gotta fix this
    taylorObstacle = loadImage("HarryStylesObstacle.png");
    mileyObstacle = loadImage("WreckingBallObstacle.png");
  }

  void display() {
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
  }

  void move() {
    loc.add(vel);
  }
}


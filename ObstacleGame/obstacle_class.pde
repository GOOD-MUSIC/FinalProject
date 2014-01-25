class Obstacle {
  PVector loc;
  PVector vel1;
  PVector vel2;
  PVector vel3;
  PImage kanyeObstacle;
  PImage kimObstacle;
  PImage taylorObstacle;
  PImage mileyObstacle;

  Obstacle() {
    loc = new PVector(width, height-62.5);
    vel1 = new PVector(-3, 0);
    vel2 = new PVector(-2, 0);
    vel3 = new PVector(-1/2, 0);
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
    if (level1 == true) {
      loc.add(vel1);
    }
    if (level2 == true) {
      loc.add(vel2);
    }
    if (level3 == true) {
      loc.add(vel3);
    }
  }
}


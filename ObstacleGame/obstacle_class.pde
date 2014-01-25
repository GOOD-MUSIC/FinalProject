class Obstacle {
  PVector loc;
  PVector vel1;
  PVector vel2;
  PVector vel3;
  PImage kanyeObstacle1;
  PImage kimObstacle1;
  PImage taylorObstacle1;
  PImage mileyObstacle1;
  PImage kanyeObstacle2;
  PImage kimObstacle2;
  PImage taylorObstacle2;
  PImage mileyObstacle2;
  PImage kanyeObstacle3;
  PImage kimObstacle3;
  PImage taylorObstacle3;
  PImage mileyObstacle3;

  Obstacle() {
    loc = new PVector(width, height-62.5);
    vel1 = new PVector(-2, 0);
    vel2 = new PVector(-3, 0);
    vel3 = new PVector(-5, 0);
    kanyeObstacle1 = loadImage("SwayObstacle.png");
    kimObstacle1 = loadImage("Kimobstacle.png");
    taylorObstacle1 = loadImage("HarryStylesObstacle.png");
    mileyObstacle1 = loadImage("WreckingBallObstacle.png");
    // TEMPORARY -- WAITING FOR MARISA
    kanyeObstacle2 = loadImage("SwayObstacle.png");
    kimObstacle2 = loadImage("Kimobstacle.png");
    taylorObstacle2 = loadImage("HarryStylesObstacle.png");
    mileyObstacle2 = loadImage("WreckingBallObstacle.png");
    kanyeObstacle3 = loadImage("SwayObstacle.png");
    kimObstacle3 = loadImage("Kimobstacle.png");
    taylorObstacle3 = loadImage("HarryStylesObstacle.png");
    mileyObstacle3 = loadImage("WreckingBallObstacle.png");
  }

  void display() {
    imageMode(CENTER);
    if (kanye == true) {
      if (level1 == true) {
        image(kanyeObstacle1, loc.x, loc.y);
      }
      if (level2 == true) {
        image(kanyeObstacle2, loc.x, loc.y);
      }
      if (level3 == true) {
        image(kanyeObstacle3, loc.x, loc.y);
      }
      if (kim == true) {
        if (level1 == true) {
          image(kimObstacle1, loc.x, loc.y);
        }
        if (level2 == true) {
          image(kimObstacle2, loc.x, loc.y);
        }
        if (level3 == true) {
          image(kimObstacle3, loc.x, loc.y);
        }
      }
      if (taylor == true) {
        if (level1 == true) {
          image(taylorObstacle1, loc.x, loc.y);
        }
        if (level2 == true) {
          image(taylorObstacle2, loc.x, loc.y);
        }
        if (level3 == true) {
          image(taylorObstacle3, loc.x, loc.y);
        }
      }
      if (miley == true) {
        if (level1 == true) {
          image(mileyObstacle1, loc.x, loc.y);
        }
        if (level2 == true) {
          image(mileyObstacle2, loc.x, loc.y);
        }
        if (level3 == true) {
          image(mileyObstacle3, loc.x, loc.y);
        }
      }
      imageMode(CORNER);
    }
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


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
    vel2 = new PVector(-2.5, 0);
    vel3 = new PVector(-3, 0);
    kanyeObstacle1 = loadImage("kanyeObstacle1.png");
    kimObstacle1 = loadImage("kimObstacle1.jpg");
    taylorObstacle1 = loadImage("taylorObstacle1.png");
    mileyObstacle1 = loadImage("mileyObstacle1.png");
    kanyeObstacle2 = loadImage("kanyeObstacle2.png");
    kimObstacle2 = loadImage("KimObstacle2.png");
    taylorObstacle2 = loadImage("taylorObstacle2.png");
    mileyObstacle2 = loadImage("mileyObstacle2.png");
    kanyeObstacle3 = loadImage("kimObstacle1.jpg");
    kimObstacle3 = loadImage("kimObstacle1.jpg");
    taylorObstacle3 = loadImage("taylorObstacle3.png");
    mileyObstacle3 = loadImage("mileyObstacle3.png");
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
    } // displays Obstacle according to which character is used and which level it is on
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
    } //changes the velocity according to which level it is on
  }
}


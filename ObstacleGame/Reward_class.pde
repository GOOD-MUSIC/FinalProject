class Reward {
  PVector loc;
  PVector vel1;
  PVector vel2;
  PVector vel3;
  PImage kanyeReward;
  PImage kimReward;
  PImage taylorReward;
  PImage mileyReward;

  Reward(float x, float y) {
    loc = new PVector(x, y);
    vel1 = new PVector(-2, 0);
    vel2 = new PVector(-3, 0);
    vel3 = new PVector(-5, 0);
    kanyeReward = loadImage("YeezusAlbumBonus.jpg");
    kimReward = loadImage("NorthWestBonus.png");
    taylorReward = loadImage("GuitarBonus.png");
    mileyReward = loadImage("MoneyBonus.png");
  }

  void display() {
    imageMode(CENTER);
    if (kanye==true) {
      image(kanyeReward, loc.x, loc.y);
    }
    if (kim==true) {
      image(kimReward, loc.x, loc.y);
    }
    if (taylor==true) {
      image(taylorReward, loc.x, loc.y);
    }
    if (miley==true) {
      image(mileyReward, loc.x, loc.y);
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


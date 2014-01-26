class Reward {
  PVector loc;
  PVector vel1;
  PVector vel2;
  PVector vel3;
  PImage kanyeReward1;
  PImage kimReward1;
  PImage taylorReward1;
  PImage mileyReward1;
  PImage kanyeReward2;
  PImage kimReward2;
  PImage taylorReward2;
  PImage mileyReward2;
  PImage kanyeReward3;
  PImage kimReward3;
  PImage taylorReward3;
  PImage mileyReward3;

  Reward(float x, float y) {
    loc = new PVector(x, y);
    vel1 = new PVector(-2, 0);
    vel2 = new PVector(-3, 0);
    vel3 = new PVector(-5, 0);
    kanyeReward1 = loadImage("YeezusAlbumBonus.jpg");
    kimReward1 = loadImage("NorthWestBonus.png");
    taylorReward1 = loadImage("GuitarBonus.png");
    mileyReward1 = loadImage("MoneyBonus.png");
    //TEMPORARY -- WAITING FOR MARISA
    kanyeReward2 = loadImage("YeezusAlbumBonus.jpg");
    kimReward2 = loadImage("NorthWestBonus.png");
    taylorReward2 = loadImage("GuitarBonus.png");
    mileyReward2 = loadImage("MoneyBonus.png");
    kanyeReward3 = loadImage("YeezusAlbumBonus.jpg");
    kimReward3 = loadImage("NorthWestBonus.png");
    taylorReward3 = loadImage("GuitarBonus.png");
    mileyReward3 = loadImage("MoneyBonus.png");
  }

  void display() {
    imageMode(CENTER);
    if (kanye == true) {
      if (level1 == true) {
        image(kanyeReward1, loc.x, loc.y);
      }
      if (level2 == true) {
        image(kanyeReward2, loc.x, loc.y);
      }
      if (level3 == true) {
        image(kanyeReward3, loc.x, loc.y);
      }
    }
    if (kim == true) {
      if (level1 == true) {
        image(kimReward1, loc.x, loc.y);
      }
      if (level2 == true) {
        image(kimReward2, loc.x, loc.y);
      }
      if (level3 == true) {
        image(kimReward3, loc.x, loc.y);
      }
    }
    if (taylor == true) {
      if (level1 == true) {
        image(taylorReward1, loc.x, loc.y);
      }
      if (level2 == true) {
        image(taylorReward2, loc.x, loc.y);
      }
      if (level3 == true) {
        image(taylorReward3, loc.x, loc.y);
      }
    }
    if (miley == true) {
      if (level1 == true) {
        image(mileyReward1, loc.x, loc.y);
      }
      if (level2 == true) {
        image(mileyReward2, loc.x, loc.y);
      }
      if (level3 == true) {
        image(mileyReward3, loc.x, loc.y);
      }
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


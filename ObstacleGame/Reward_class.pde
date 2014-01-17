class Reward {
  PVector loc;
  PVector vel;
  PImage kanyeReward;
  PImage kimReward;
  PImage taylorReward;
  PImage mileyReward;

  Reward(float x, float y) {
    loc = new PVector(x, y);
    vel = new PVector(-2, 0);
    kanyeReward = loadImage("YeezusAlbumBonus.jpg");
    kimReward = loadImage("NorthWestBonus.png");
    taylorReward = loadImage("GuitarBonus.png");
    mileyReward = loadImage("MoneyBonus.png");
  }

  void display() {
    if (kanye==true) {
//      background(kanyeBackground);
      image(kanyeReward, loc.x, loc.y);
    }
    if (kim==true) {
  //    background(kimBackground);
      image(kimReward, loc.x, loc.y);
    }
    if (taylor==true) {
    //  background(taylorBackground);
      image(taylorReward, loc.x, loc.y);
    }
    if (miley==true) {
      //background(mileyBackground);
      image(mileyReward, loc.x, loc.y);
    }
  }
  void move() {
    loc.add(vel);
  }
}


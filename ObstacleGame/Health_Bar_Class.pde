class HealthBar {
  int health;
  int healthX;
  int healthY;

  HealthBar() {
    health = 1000;
    healthX = 250;
    healthY = 50;
  }

  void display() {
    fill(360);
    if(miley == true){
      fill(260, 100, 100);
    }
    textSize(20);
    text("Health: " + health/10, healthX, healthY); 
    fill(126, 100, 100);
    rectMode(CORNER);
    noStroke();
    rect(healthX-60, healthY + 5, health*.12, 10);
    if (health<=200) {
      fill(360, 100, 100);
      noStroke();
      rect(healthX-60, healthY + 5, health*.12, 10);
    }
  }
}


class HealthBar {
  int health;
  int healthX;
  int healthY;

  HealthBar() {
    health = 1000;
    healthX = 850;
    healthY = 20;
  }

  void display() {
    fill(360);
    textSize(20);
    text("Health: " + health/10, healthX, healthY); 
    fill(126, 100, 100);
    rect(healthX, healthY + 5, health*.12, 10);
    if (health<=20) {
      fill(360, 100, 100);
      rect(healthX, healthY + 5, health*1.2, 10);
    }
  }
  }


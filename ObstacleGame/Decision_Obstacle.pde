void decision() {
  colorMode(HSB,360,100,100);
  if (kanye){
  background(0);
  fill(360);
  textAlign(CENTER);
  textSize(kwSize);
  text("Sway has just asked you why you don't \n empower yourself and do it yourself.  \n What do you say?", width/2, kwSize);
  fill(360);
  rect(100, 400, 400, 100);
  fill(0);
  textAlign(CENTER);
  textSize(kwSize/2);
  text("YOU AIN'T GOT THE ANSWERS!", 300, 450);
  fill(360);
  rect(700, 400, 250, 100);
  fill(0);
  text("Good idea dawg!", 825, 450);
  if (mouseX >= 100 && mouseX <=500 && mouseY >=400 && mouseY <= 500) {
    fill(20,100,100);
    rect(100, 400, 400, 100);
    fill(360);
    textAlign(CENTER);
    textSize(kwSize/2);
    text("YOU AIN'T GOT THE ANSWERS!", 300, 450);
  }
  if (mouseX>=700 && mouseX <=950 && mouseY >= 400 && mouseY <=500) {
    fill(180,100,100);
    rect(700, 400, 250, 100);
    fill(360);
    text("Good idea dawg!", 825, 450);
  }
  }
}

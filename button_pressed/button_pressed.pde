int buttonColor, buttonX, buttonY, buttonRadius; 
PVector rectloc;
PVector rectSpeed; 

void setup() { 
  size(800, 800);
  buttonColor = color(255, 0, 0);
  buttonX = width/2;
  buttonY = height/2;
  buttonRadius = width/4/2;
  
  rectloc = new PVector(50, 50);
  rectSpeed = new PVector(0, 0);
}

void draw () {
  rectloc.add(rectSpeed); 
  
  background(255);
  fill(buttonColor);
  ellipse(buttonX, buttonY, buttonRadius*2, buttonRadius*2);
  fill(0);
  if (rectloc.x >= width) {
    rectSpeed.x = -rectSpeed.x;
  }
  rect(rectloc.x, rectloc.y, 30, 40);
  rectloc.x += rectSpeed.x;
}
void mousePressed() {
  float d = dist(mouseX, mouseY, buttonX, buttonY);
  if (d <= buttonRadius) {
  buttonColor = color(0, 250, 0);
  rectSpeed.set(1, 0);
  }
 
  
 
}

void mouseReleased() { 
  buttonColor = color(255, 0, 0);
}
PImage Grass;
PVector ball = new PVector (width - 320, 550);

void setup() {
  size(640,640);
  Grass = loadImage("Soccerball.jpg_640x640.jpg");
}


void draw() {
  pushMatrix();
    scale(1);
    image(Grass, 0, 0);
  popMatrix();
  
  noStroke();
  fill(#05204A); //Sky
  rect(0, 0, 640 , 426); 

  stroke(#FCFFFC);
  noFill();  //goal post
  strokeWeight(10);
  rect(width - 430, 300, 200, 140);

  noStroke();
  fill(#248232); //grass 
  rect(0, height - 226, 640, 640);

noStroke();
  fill(#FCFFFC); //ball
  //ellipse(width - 320 , 550 , 60, 60);
 ellipse(ball.x, ball.y, 60, 60);
 
noStroke();
  fill(#1B1B1E); //Scoreboard
  rect(width - 398, 215, 130, 60);

noStroke();
  if(millis()/500 % 2 == 0){ 
    fill(#A20021);
  } else { 
    noFill();
  }
  text("0 - 0", 276, 255);
  textSize(25);
  
noStroke();
  fill(#78C0E0); //right advertisement 
  rect(width - 225, 394, 350, 20);

noStroke();
  fill(#78C0E0); //left advertisement 
  rect(0, width - 246.5, 206, 20);
}
void mouseDragged() { 
  ball.x = mouseX;
  ball.y = mouseY;
  
}
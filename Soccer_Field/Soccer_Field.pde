PImage Grass;

void setup() {
  size(640,640);
  Grass = loadImage("Soccerball.jpg");
}

void draw() {
  pushMatrix();
    scale(1);
    image(Grass, 0, 0);
  popMatrix();

noStroke();
  fill(#248232);
  rect(0, height - 226, 640, 640);


noStroke();
  fill(#FCFFFC);
  ellipse(width - 320 , 550 , 60, 60);
  
noStroke();
  fill(#05204A);
  rect(0, 0, 640 , 426);

noStroke();
  fill(#FCFFFC);
  rect(width - 430, 306, 200, 120); 
  
noStroke();
  fill(#090909);
  rect(width - 400, 215, 130, 60);
  
noStroke();
  fill(#78C0E0);
  rect(width - 230, 406, 400, 20);

noStroke();
  fill(#78C0E0);
  rect(0, width - 234, 210, 20);
}

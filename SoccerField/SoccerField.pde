PImage Grass;

void setup() {
  size(784,526);
  Grass = loadImage("salviola2.jpg");
}

void draw() {
  pushMatrix();
    scale(1);
    image(Grass, 0, 0);
  popMatrix();

noStroke();
  fill(#81E979);
  rect(0, height - 200, 1140, 297);


noStroke();
  fill(#FCFFFC);
  ellipse(width - 200 , 380 , 180, 180);
}
  
 
float weight;

void setup() {
  size(680, 680);
  smooth();
  stroke(12, 100);
}

void draw() {
  if (mousePressed) {
    weight = dist(mouseX, mouseY, pmouseX, pmouseY); 
    strokeWeight(weight);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

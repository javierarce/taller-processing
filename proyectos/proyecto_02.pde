PVector[]points = new PVector[1000];
int i = 0;

void setup() {
  size(680, 680);

  background(255);
  stroke(1);
}

void draw() {
  if (mousePressed) {
    points[i] = new PVector(mouseX, mouseY);

    if (i < points.length) {
      i = i +1;
    }
  }

  background(255);

  for (int i = 0; i < points.length; i++) {
    if (points[i] != null) {
      PVector point = points[i];
      line(point.x, point.y, point.x + random(-10, 10), point.y + random(-10, 10));
    }
  }
}

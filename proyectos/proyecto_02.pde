boolean[][]points = new boolean[680][680];

void setup() {
  size(680, 680);
  smooth();

  background(255);
  stroke(1);
}

void draw() {
  if (mousePressed) {
    line(mouseX, mouseY, pmouseX, pmouseY);
    points[mouseX][mouseY] = true;
  }

  background(255);

  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      if (points[i][j]) {
        line(i, j, i + random(-10, 10), j + random(-10, 10));
      }
    }
  }
}

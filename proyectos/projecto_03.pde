PGraphics pg;

float gridHorizontal;
float gridVertical;
int h;
int w;

void setup() {
	size(1280, 720);
	background(255);
	noStroke();

	rectMode(CENTER);

	w = 10;
	h = 20;

	gridHorizontal = width/w;
	gridVertical = height/h;

	pg = createGraphics(width, height);
	pg.beginDraw();
	pg.textSize(500);
	pg.textAlign(CENTER, CENTER);
	pg.fill(color(0));
	pg.text("TYPE", pg.width/2, pg.height/2);
	pg.endDraw();
}

void draw() {
	background(255);

	for (int x = 0; x < gridHorizontal; x++) {
		for (int y = 0; y < gridVertical; y++) {
			int pX = x * w;
			int pY = y * h;
			color c = pg.get(pX, pY);

			if (c == color(0)) {
				fill(pX * pY % 255);
        rect(pX, pY, w, w);
			}
		}
	}
} 

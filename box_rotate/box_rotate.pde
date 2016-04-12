Box b;

void setup() {
  size(400, 400);
  b = new Box(100, 100, 75, 50);
  b.degrees = 45;
}

void draw() {
  background(255);
  b.checkForHit(mouseX, mouseY); 
  b.drawBox();
  b.degrees++;
}


color skyDawn = color(248, 226, 239);
color skyDay = color(220, 244, 254);

void setup() {
  size(300, 800);
}

void draw() {
  float inter = map(mouseY, 0, height, 0, 1);
  color c = lerpColor(skyDay, skyDawn, inter);
  background(c);
}


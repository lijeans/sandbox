color skyDawn = color(248, 226, 239);
color skyDay = color(220, 244, 254);

void setup() {
  size(300, 800);
}

void draw() {
  float inter = map(mouseY, 0, height, 0, 1);
  color c = lerpColor(skyDay, skyDawn, inter);
//  background(c);
  fill(c);
  variableEllipse(mouseX, mouseY, pmouseX, pmouseY);
}



// The simple method variableEllipse() was created specifically 
// for this program. It calculates the speed of the mouse
// and draws a small ellipse if the mouse is moving slowly
// and draws a large ellipse if the mouse is moving quickly 

void variableEllipse(int x, int y, int px, int py) {
  float speed = abs(x-px) + abs(y-py);
  stroke(speed);
  ellipse(x, y, speed, speed);
}

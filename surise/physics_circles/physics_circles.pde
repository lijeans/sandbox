import fisica.util.nonconvex.*;
import fisica.*;




color skyDawn = color(248, 226, 239);
color skyDay = color(220, 244, 254);
FWorld world;

void setup() {
  size(300, 800);
  Fisica.init(this);
  world = new FWorld();
  world.setEdges();
}

void draw() {
  float inter = map(mouseY, 0, height, 0, 1);
  color c = lerpColor(skyDay, skyDawn, inter);
  background(c);
  world.step();
  world.draw();
}


void mouseClicked() {
  float inter = map(mouseY, 0, height, 0, 1);
  color c = lerpColor(skyDay, skyDawn, inter);
  FCircle myCircle = new FCircle(40);
  myCircle.setPosition(mouseX, mouseY);
  myCircle.setFillColor(c);
  world.add(myCircle);
  background(c);
  FBody body = world.getBody(mouseX, mouseY);
  float forceX = mouseX-pmouseX;
  float forceY = mouseY-pmouseY;
  //for (FBody body: bodies){
    //body.addForce(forceX, forceY);
//  }
}
// The simple method variableEllipse() was created specifically 
// for this program. It calculates the speed of the mouse
// and draws a small ellipse if the mouse is moving slowly
// and draws a large ellipse if the mouse is moving quickly 

void variableEllipse(int x, int y, int px, int py) {
  float speed = abs(x-px) + abs(y-py);
  noStroke();
  ellipse(x, y, speed, speed);
}

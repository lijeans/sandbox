//articulate arm with boolean stop

float angle = 0.0;
float angleDirection = 1;
float speed = 0.005;
boolean b = true;


void setup() {
  size(120, 120);
  smooth();
}

void draw() {
  if (b) {
  background(204);
  translate(20, 25);
  rotate(angle);
  strokeWeight(12);
  line(0, 0, 40, 0);
  translate(40, 0);
  rotate(angle*2);
  strokeWeight(6);
  line(0, 0, 30, 0);
  translate(30, 0);
  rotate(angle*2.5);
  strokeWeight(3);
  line(0, 0, 20, 0);
  
  angle += speed * angleDirection;
  if (angle > .74) {
    b = false;
  }
  }
}


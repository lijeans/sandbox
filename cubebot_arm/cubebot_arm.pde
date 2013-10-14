float angle = 0.0;
float angleDirection = 1;
float speed = 0.005;
boolean b = true;
float y = 0.0;
float x = 0.0;

void setup() {
  size (700, 700);
  smooth();
}

void draw () {
  if (b) {
    background(255);
    translate(300, 300);
    rotate(angle);
    rect(0, 0, 24, 48);
    translate(0, 48+y);
    rotate(angle);
    rect(0, 0, 24, 38);
    translate(0, 38);
    rotate(angle+angle);
    rect(0, 0, 14, 16);
    y -= 24/(HALF_PI/.005);
    }
    angle += speed;
    if (angle > HALF_PI) {
      b = false;
    
    
    }
}

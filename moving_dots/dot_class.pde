class Dot {
  float x; 
  float y;
  float angle = 0.0;
  float speed = 0.01;
  float scalar = .5;
  float direction = 1;
  
  Dot(float tempX, float tempY){ 
    x = tempX;
    y = tempY;
   }


  void move() {
    x += 1 * direction;
      if ((x > width-10) || (x < 10)) {
        direction = -direction;
      }
    y += cos(angle)*scalar;
      if ((y > height-10) || (y < 10)) {
        scalar = -scalar;
      }
    angle += speed;
  }

  void display() { 
    ellipse(x, y, 10, 10);
  }
}


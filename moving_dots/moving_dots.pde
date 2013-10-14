Dot[] point = new Dot[4];

void setup() {
  size(500, 200);
  for (int i = 0; i < point.length; i++) {
    float x = random(width);
    float y = random(5, 195);
    point[i] = new Dot(x, y);
  }
}
  
  void draw() {
    background(255);
    for (int i = 0; i < point.length; i++) {
      point[i].move();
      point[i].display();
    }
    line(x[i]
  }
  

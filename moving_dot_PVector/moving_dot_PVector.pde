PVector location1;
PVector location2;
PVector direction1;
PVector direction2;

void setup() {
  size(400, 300);
  location1 = new PVector(random(width), random(height));
  location2 = new PVector(random(width), random(height)); 
  direction1 = new PVector(random(-2, 2), random(-2, 2));
  direction2 = new PVector(random(-2, 2), random(-2, 2));
}

void draw() {
  background(255);
  
  for (int i = 0; i < dots.size(); i++) {
    PVector p = (PVector)dots.get(i);
    ellipse(p.x, p.y, 10, 10)
    
  float b = dist(location1.x, location1.y, location2.x, location2.y);
  map(b, 0, 500, 0, 255);
  fill(255-b);
  stroke(255-b);
  ellipse(location1.x, location1.y, 10, 10);
  ellipse(location2.x, location2.y, 10, 10);
  
  float d = dist(location1.x, location1.y, location2.x, location2.y);
  map(d, 0, 500, 0, 255);
  stroke(d);
  line(location1.x, location1.y, location2.x, location2.y);
 
  location1.add(direction1);
  location2.add(direction2);
  
  if ((location1.x > width) || (location1.x < 0)) {
    direction1.x = direction1.x * -1;
  }
  if ((location2.x > width) || (location2.x < 0)) {
    direction2.x = direction2.x * -1;
  }
  
  if ((location1.y > height) || (location1.y < 0)) {
    direction1.y = direction1.y * -1;
  }
  if ((location2.y > height) || (location2.y < 0)) {
    direction2.y = direction2.y * -1;
  } 
}
 

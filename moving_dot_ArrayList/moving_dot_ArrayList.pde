ArrayList<PVector> dots;

void setup() {
  size(400, 300);
  dots = new ArrayList<PVector> ();
  for (int i = 0; i < 100; i++) {
   dots.add(new PVector(random(width), random(height), random(TWO_PI)));
  } 
}

void draw() {
  background(255);
  for (int i = 1; i < 99; i++) {
    PVector p = (PVector)dots.get(i);
    PVector q = (PVector)dots.get(i+1);
    PVector r = (PVector)dots.get(i-1);
    float m = p.mag();
    float n = q.mag();
    float o = r.mag();
    float shade = m-n;
    map(shade, 0, 500, 0, 255);
    if (m-n < 5 || m-o < 5) { fill(200-shade); } else { fill(0); }
    noStroke();
    ellipse(p.x, p.y, 10, 10);
    p.x += 3*sin(p.z);
    p.y += 3*cos(p.z);
    if (p.x < 0 || p.x > width) { p.z += PI; }
    if (p.y < 0 || p.y > height) { p.z += PI; }
  }
}

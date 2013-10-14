//float a = random(255);
int color_a = 255;
//float b = random(255);
//int color_b = 0;
//int i=0;
//int j=0;

void setup() {
  //frameRate(2);
  size(500, 500);
  noStroke();
  smooth();
  
}

void draw() {
float x = dist(width/2, height/2, mouseX, mouseY); 
float y = map(x, 0, 353.55, 0, 255);
float z = int(y);
  background(255);
  //for (int i = 0; i < 255; i++) {
    fill(z);
    ellipse(width/2, height/2, 500, 500);
  //}
  
  fill(color_a);
  ellipse(width/2, height/2, 50, 50);
  
  println(x);
 // i++;
  //j++;
}

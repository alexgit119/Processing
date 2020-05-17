float angle = 0;
void setup() {
   size(800, 800);
   background(255);
   smooth();
}

void draw() {
  for(int i = 0; i < width; i++)
  {
    stroke(random(255),random(255),random(255));
    bezier(random(width), random(height), 300+ cos(radians(angle)) * 50, 70+ sin(radians(angle)) * 50, 300 + cos(radians(angle)) * 50, 270 + sin(radians(angle)) * 50, random(width), random(height));
    angle += 2;
  }
  
}

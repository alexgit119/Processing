float angle = 0;
float radius = 50;
float z = 0;

void setup() {
  size(600, 600, P3D);
  background(255);
}

void draw() {
  lights();
  pushMatrix();
  translate(cos(radians(angle)) * radius + width/2, sin(radians(angle))* radius + height/2, z);
  //rotateX(cos(radians(angle)));
   noStroke();
   fill(random(255), random(255), random(255));
   ellipse(0, 0, 30, 30);
   angle += 3.0;
   z += 0.7;
   popMatrix();
  
}

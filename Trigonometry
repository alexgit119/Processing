float curveAngle = 0;
float radius = 100;
//float circleAngle = 0;

float rectPosX = 200;
float rectPosY = 0;
float rectAngle = 0;
float amplitude = 50;
ArrayList<Circle> circles = new ArrayList<Circle>();

void setup() {
   size(1300, 500);
   smooth();
   ellipseMode(CENTER);
   rectMode(CENTER);
}

void draw() {
    background(127);
    stroke(0);
    
   
    //Draw the curve formed by the points
    curveAngle = 0;
    for(int x = 200; x < width; x++)
      {
        point(x, 100 + sin(radians(curveAngle)) * amplitude);
        curveAngle += 2;
      }
    
    //draw the rectangle from the curve and reset the x position and angle at the end of the draw function if they are greater than width
    
    rectPosY = sin(radians(rectAngle)) * amplitude + 100;
    rect(rectPosX, rectPosY, 5, 5);

  
    for(Circle c : circles)
      {
       
       c.drawCircle(); 
       stroke(0);
       
       //stroke(255);
       //draw the line connecting circle with rectangle of the curve
       line(c.posX + cos(radians(rectAngle)) * amplitude, c.posY + sin(radians(rectAngle)) * amplitude, rectPosX, rectPosY);
       
       
       //rectangle from circle  
       rect(c.posX + cos(radians(rectAngle)) * amplitude, c.posY + sin(radians(rectAngle)) * amplitude, 5, 5);
       
       stroke(0);
       //radius of circle
      line(c.posX, c.posY, c.posX + cos(radians(rectAngle)) * amplitude, c.posY + sin(radians(rectAngle)) * amplitude);

       
    }
  
  rectAngle+=2;
  rectPosX++;
  if(rectPosX > width)
  {
     rectPosX = 200;
     rectAngle = 0;
  }
  

}


void mousePressed() {
     circles.add(new Circle());
}

class Circle {
   float posX, posY;
   float angle;
   
   Circle() 
   {
       this.posX = mouseX;
       this.posY = mouseY;
      // angle = 0;
   }
   
   void drawCircle() {
     noStroke();
     ellipse(posX, posY, amplitude * 2, amplitude * 2); 
   }
}

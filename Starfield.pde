//your code here
Particle [] dots = new Particle[1000];
boolean back = false;
void setup()
{
  size(500, 500);
  background(0);
  for (int i = 0; i<dots.length; i++) {
  dots[i] = new Particle();
  dots[0] = new OddballParticle();
  }
}
void draw()
{
 // background(0);
  for(int i = 0; i<dots.length; i++) {
  dots[i].move();
  dots[i].show();
  }
}

void mousePressed() {
  for (int i = 0; i<dots.length; i++) {
  dots[i] = new Particle();
  dots[0] = new OddballParticle();
  }
redraw();
}


class Particle
{
  float myX, myY, myAngle, mySpeed, mySize;
  int  myColor; 
  Particle() {
    myX = 250;
    myY =200;
    myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    mySpeed = (float) ((Math.random() *2)+1);
    myAngle =  (float) (Math.random() *360);
  }
  void move(){
  if (myX<500) {
  myX = myX + (cos((float)myAngle)*mySpeed);
  myY = myY + (sin((float)myAngle)*mySpeed); 
  mySpeed= mySpeed + 0.005;
  }
  }
  void show(){
  fill(myColor);
  ellipse(myX,myY, 4, 4);
  }
}

class OddballParticle extends Particle
{
  OddballParticle() {
   myX = 250;
    myY =250;
    myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
    mySpeed = 10;
    myAngle =  (float) (Math.random() *360);
    mySize = 8;
  }
   void move(){
  if ((myX>350)||(myY>350) || (myX<150)||(myY<150)) {
  myX = 250;
  myY = 200;
  myColor = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
   myAngle =  (float) (Math.random() *360);
 
    } else {
     myX = myX + (cos((float)myAngle)*mySpeed);
     myY = myY + (sin((float)myAngle)*mySpeed); 
    
    }
  }
  void show(){
  fill(255);
  ellipse(myX,myY, mySize, mySize);
  }
}

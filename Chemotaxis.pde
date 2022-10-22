bacteria[] bob = new bacteria[150];

void setup() {
  frameRate(30);
  size(500, 500);
  for(int i = 0; i < bob.length; i++){
    bob[i] = new bacteria();
  }
}

void draw() {
  background(#EAFFB9);
  for(int i = 0; i < bob.length; i++){
    bob[i].move();
    bob[i].show();
  }
}

class bacteria {
  float myYspeed;
  int grow, myC, myX, myY;

  bacteria() {
    myC = color((int)(Math.random()*255), (int)(Math.random()*100)+150, 255);
    myX = (int)(Math.random()*490)+10;
    myY = (int)(Math.random()*490)+10;
    grow = (int)(Math.random()*40) + 50;
    myYspeed = 1;
  }
  bacteria(color c){
    myC = c;
    myX = 150;
    myY = 150;
    myYspeed = 1.2;
  }
  bacteria(int c, int x, int y, float s){
    myC = c;
    myX = x;
    myY = y;
    myYspeed = s;
  }
  void show(){
    noStroke();
    rectMode(CENTER);
    fill(myC);
    ellipse(myX, myY, grow, grow);
  }
  void move(){
    myY += myYspeed;
    if (myY > width)
      myY = 0;
  }
}

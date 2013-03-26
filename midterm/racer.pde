class Racer{
  
  
  color c = color(0);
  
  float x = 0;
  float y = 45;
  float m = 0;
  float speed= 4;

Racer(){
    size(200,200);
}

void move() {
  if (mousePressed) {
    m = m + 1;
  }
  x = 0 + m/speed;
  if (x > width) {
    x = 0;
  }
}

void display() {
  fill(c);
  rect(x,y,30,10);
}
}

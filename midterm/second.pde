class Racer2{
  
  
  color c = color(255);
  
  float x = 0;
  float y = 145;
  float m = 0;
  float speed= 4;
  
Racer2(){
    size(200,200);
}

void move() {
  if (key==' ') {
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

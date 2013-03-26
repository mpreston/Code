Racer firstRacer;
Racer2 secondRacer;


void setup() {
  firstRacer = new Racer();
  secondRacer= new Racer2();

}

void draw() {
  background(255);
  firstRacer.move();
  firstRacer.display();
  secondRacer.move();
  secondRacer.display();

}


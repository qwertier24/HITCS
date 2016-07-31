Car myCar;

void setup() {
  size(400, 400);
  myCar = new Car();
  //background(255);
}

void draw() {
  background(255);
  myCar.drive();
  myCar.display();
}

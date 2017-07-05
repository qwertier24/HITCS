Car myCar;

void setup(){
  size(400, 400);
  myCar = new Car();
}

void draw(){

  background(255);
  myCar.drive();
  myCar.display();
}

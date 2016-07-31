class Car {
  color c;
  float x;
  float y;
  float speed;

  String make;
  String model;
  
  Car() {
    c = color(0);
    x = width/2;
    y = height/2;
    speed = 2;
    make = "Ford";
    model = "Kuga";
  }
  
  void display() {
    rectMode(CENTER);
    fill(c);
    rect(x, y, 20, 10);
    text(make, width/2, height/4*1);
    text(model, width/2, height/4*3);
  }

  void drive() { 
    x = x + speed;
    if (x > width)
      x = 0;
  }
} // end of class

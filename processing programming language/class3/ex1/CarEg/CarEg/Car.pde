class Car{
  color c;
  float x;
  float y;
  float speed;
  
  Car(){
    c = color(0);
    x = width/2;
    y = height/2;
    speed = 1;
  }  
  
  void display() {
    rectMode(CENTER);
    fill(c);
    rect(x,y,20,10);
  }

  void drive() { // Car now has a non-zero speed;
    x = x + speed;
    if (x > width)
      x = 0;
  }
} // end class

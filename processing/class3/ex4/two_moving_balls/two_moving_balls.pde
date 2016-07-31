Ball ball1, ball2;
void setup() {
  size(400, 400);
  background(255);
  do {
    ball1 = new Ball();
    ball2 = new Ball();
  } while ( !ball1.seperated(ball2) ); 
}

void draw() {
  if ( ball1.seperated(ball2) ) {
    ball1.moveBall();
    ball2.moveBall();
    background(255);
    ball1.display();
    ball2.display();
  }
}

Ball ball = new Ball();
void setup() {
  size(400, 400);
  background(255);
  println(ball.speedx);
  println(ball.speedy);
}

void draw() {
  //println((int)random(-5,5));
  ball.moveBall();
  background(255);
  ball.display();
}

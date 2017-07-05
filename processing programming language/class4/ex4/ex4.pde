color c = color(random(255), random(255), random(255));
int ballX = 0, ballY = 1;
int rad = 50;
boolean dragging = false;
float dx, dy;

void drawLine() {
  strokeWeight(2);
  stroke(0);
  line(width / 2, 0, width / 2, height);
  line(0, height / 2, width, height / 2);
}

void draw() {
}

void drawBallInQuad() {
  ellipseMode(CENTER);
  strokeWeight(0);
  fill(c);
  ellipse(ballX * (width / 2) + width / 4, ballY * (height / 2) + height / 4, rad * 2, rad * 2);
}

void drawBallAtMouse() {
  ellipseMode(CENTER);
  strokeWeight(0);
  fill(c);
  ellipse(mouseX + dx, mouseY + dy, rad * 2, rad * 2);
}

void setup() {
  background(255);
  size(400, 400);
  drawLine();
  drawBallInQuad();
}

void mousePressed() {
  if ( sqrt( sq(mouseX - (ballX * (width / 2) + width / 4))
             + sq(mouseY - (ballY * (height / 2) + height / 4))) <= rad ) {
    dragging = true;
    dx = ballX * (width / 2) + width / 4 - mouseX;
    dy = ballY * (height / 2) + height / 4 - mouseY;
  }
}

void mouseDragged() {
  if ( !dragging )
    return;
  background(255);
  drawBallAtMouse();
  drawLine();
}

void mouseReleased() {
  if ( !dragging )
    return;
  c = color(random(255), random(255), random(255));
  if ( mouseX >= 0 && mouseX <= width && mouseY >= 0 && mouseY <= height ) {
    ballX = (mouseX / (width/2));
    ballY = (mouseY / (height/2));
  }
  background(255);
  drawBallInQuad();
  drawLine();
  dragging = false;
}

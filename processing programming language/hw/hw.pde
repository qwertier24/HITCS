class SquareOrBall {
  color c;
  float mx, my;  // the coordinate of the center
  SquareOrBall(float _mx, float _my) {
    mx = _mx;
    my = _my;
    c = color(random(255), random(255), random(255));
  }
  SquareOrBall(float _mx, float _my, color _c) {
    mx = _mx;
    my = _my;
    c = _c;
  }
  void setPos(float _mx, float _my) {
    mx = _mx;
    my = _my;
  }
}

class Square extends SquareOrBall {
  Square(float _mx, float _my) {
    super(_mx, _my);
  }
  Square(float _mx, float _my, color _c) {
    super(_mx, _my, _c);
  }
  void display() {
    noStroke();
    fill(c);
    rectMode(CENTER);
    rect(mx, my, rad * 2, rad * 2);
  }
  boolean touch(float x, float y) {
    /*
      Check whether (x,y) is in this square.
    */
    return abs(x - mx) <= rad && abs(y - my) <= rad;
  }
}

class Ball extends SquareOrBall {
  Ball(float _mx, float _my) {
    super(_mx, _my);
  }
  Ball(float _mx, float _my, color _c) {
    super(_mx, _my, _c);
  }
  void display() {
    noStroke();
    fill(c);
    ellipseMode(CENTER);
    ellipse(mx, my, rad * 2, rad * 2);
  }
  boolean touch(float x, float y) {
    /*
      Check whether (x,y) is in this ball.
    */
    return sqrt(sq(x - mx) + sq(y - my)) <= rad;
  }
}

float len;  // length of the cell
float rad;  // radius of the ball and half the length of the square
int n = 15; // n columns and n rows
Square[][] squares = new Square[n][n]; 
Ball[][] balls = new Ball[n][n];
int[][] state = new int[n][n];  // States of each cell
int SQUARE = 0, BALL = 1, EMPTY = -1;

void drawCells() {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      if (state[i][j] == SQUARE) {
        squares[i][j].display();
      } else if (state[i][j] == BALL) {
        balls[i][j].display();
      }
    }
  }
}

void drawLines() {
  /*
    Draw the horizontal and vertical lines
   */
  stroke(0);
  strokeWeight(1);
  for (int i = 0; i <= n; i++) {
    line(i * len, 0, i * len, height);
    line(0, i * len, width, i * len);
  }
}

void init() {
  /*
    Clear all cells except the cells on the top and the cells on the bottom
   */
  for (int i = 0; i < n; i++) {
    for (int j = 1; j < n - 1; j++) {
      state[i][j] = -1;
    }
  }
  background(255);
  drawCells();
  drawLines();
}

void setup() {
  size(600, 600);
  background(255);
  len = width / n;
  rad = len / 2 - 3;
  for (int i = 0; i < n; i++) {
    for (int j = 1; j < n - 1; j++) {
      state[i][j] = -1;
    }
  }
  for (int i = 0; i < n; i++) {
    state[i][0] = SQUARE;
    state[i][n-1] = BALL;
    squares[i][0] = new Square(i * len + len / 2, len / 2);
    balls[i][n-1] = new Ball(i * len + len / 2, height - len / 2);
  }
  drawCells();
  drawLines();
}

void keyPressed() {
  if (key == ' ') {
    init();
  }
}


int state_drag = EMPTY;  // Indicating what is being dragged
float dx, dy;            // X_center - mouseX, Y_center - mouseY
Square square_drag;      // The square being dragged
Ball ball_drag; 
void mousePressed() {
  int i = (int)(mouseX / len), j = (int)(mouseY / len);
  if (state[i][j] == SQUARE && squares[i][j].touch(mouseX, mouseY)) {
    state_drag = SQUARE;
    square_drag = new Square(squares[i][j].mx, squares[i][j].my, squares[i][j].c);
    dx = squares[i][j].mx - mouseX;
    dy = squares[i][j].my - mouseY;
  } else if(state[i][j] == BALL && balls[i][j].touch(mouseX, mouseY)) {
    state_drag = BALL;
    ball_drag = new Ball(balls[i][j].mx, balls[i][j].my, balls[i][j].c);
    dx = balls[i][j].mx - mouseX;
    dy = balls[i][j].my - mouseY;
  }
}

void draw() {
  background(255);
  drawCells();
  if (state_drag == SQUARE) {
    square_drag.setPos(mouseX + dx, mouseY + dy);
    square_drag.display();
  } else if(state_drag == BALL) {
    ball_drag.setPos(mouseX + dx, mouseY + dy);
    ball_drag.display();
  }
  drawLines();
}

void mouseReleased() {
  if (state_drag == EMPTY)
    return;
  if (mouseX >= 0 && mouseX < width && mouseY >= len && mouseY < width - len) {
    int i = (int)(mouseX / len), j = (int)(mouseY / len);
    state[i][j] = state_drag;
    if (state_drag == SQUARE) {
      squares[i][j] = new Square(i * len + len / 2, j * len + len / 2, square_drag.c);
    } else if (state_drag == BALL) {
      balls[i][j] = new Ball(i * len + len / 2, j * len + len / 2, ball_drag.c);
    }
  }
  state_drag = EMPTY;
}

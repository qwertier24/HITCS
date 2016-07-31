int EMPTY = -1, SQUARE = 0, BALL = 1;
class Cell {
  color c;      // the color of the content of the cell
  float mx, my;  // the coordinate of the center
  int type;      // indication of the type of the content of this CELL, -1 for empty, 0 for square, 1 for ball
  Cell(int _type, float _mx, float _my) {
    type = _type;
    mx = _mx;
    my = _my;
    c = color(random(255), random(255), random(255));
  }
  Cell(int _type, float _mx, float _my, color _c) {
    type = _type;
    mx = _mx;
    my = _my;
    c = _c;
  }
  void setPos(float _mx, float _my) {
    mx = _mx;
    my = _my;
  }
  void display() {
    if (type == SQUARE) {
      noStroke();
      fill(c);
      rectMode(CENTER);
      rect(mx, my, rad * 2, rad * 2);
    } else if (type == BALL) {
      noStroke();
      fill(c);
      ellipseMode(CENTER);
      ellipse(mx, my, rad * 2, rad * 2);
    }
  }
  boolean touch(float x, float y) {
    /*
      Check whether (x,y) is in this square.
    */
    if (type == SQUARE) 
      return abs(x - mx) <= rad && abs(y - my) <= rad;
    else if (type == BALL)
      return sqrt(sq(x - mx) + sq(y - my)) <= rad;
    else
      return false;
  }
}

float len;  // length of the cell
float rad;  // radius of the ball and half the length of the square
int n = 15; // n columns and n rows
Cell[][] cells = new Cell[n][n];

void drawCells() {
  for (int i = 0; i < n; i++) {
    for (int j = 0; j < n; j++) {
      cells[i][j].display();
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
      cells[i][j].type = EMPTY;
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
      cells[i][j] = new Cell(EMPTY, i * len + len / 2, j * len + len / 2);
    }
  }
  for (int i = 0; i < n; i++) {
    cells[i][0] = new Cell(SQUARE, i * len + len / 2, len / 2);
    cells[i][n-1] = new Cell(BALL, i * len + len / 2, height - len / 2);
  }
  drawCells();
  drawLines();
  dragging_cell = new Cell(EMPTY, 0, 0);
}

void keyPressed() {
  if (key == ' ') {
    init();
  }
}


Cell dragging_cell; // the cell being dragged
float dx, dy;            // X_center - mouseX, Y_center - mouseY
void mousePressed() {
  int i = (int)(mouseX / len), j = (int)(mouseY / len);
  if (cells[i][j].touch(mouseX, mouseY))
    dragging_cell = new Cell(cells[i][j].type, cells[i][j].mx, cells[i][j].my, cells[i][j].c);
  dx = cells[i][j].mx - mouseX;
  dy = cells[i][j].my - mouseY;
}

void draw() {
  background(255);
  drawCells();
  
  dragging_cell.setPos(mouseX + dx, mouseY + dy);
  dragging_cell.display();
  
  drawLines();
}

void mouseReleased() {
  if (dragging_cell.type == EMPTY)
    return;
  if (mouseX >= 0 && mouseX < width && mouseY >= len && mouseY < width - len) {
    int i = (int)(mouseX / len), j = (int)(mouseY / len);
    cells[i][j].type = dragging_cell.type;
    cells[i][j].c = dragging_cell.c;
  }
  dragging_cell.type = EMPTY;
}

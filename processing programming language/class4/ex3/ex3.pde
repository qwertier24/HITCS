int n = 30;
float w, h;
color[][] c = new color[n][n];

void setColor() {
  for ( int i = 0; i < n; i++ )
    for ( int j = 0; j < n; j++ )
      c[i][j] = color(random(255), random(255), random(255));
}

void paintRect() {
  for ( int i = 0; i < n; i++ )
    for ( int j = 0; j < n; j++ ) {
      fill(c[i][j]);
      rect(j * w, i * h, w, h);
    }
}

void draw() {
}

void setup() {
  size(600, 600);
  strokeWeight(1);
  w = 1.0 * width / n;
  h = 1.0 * height / n;
  setColor();
  paintRect();
}

void keyPressed() {
  background(255);
  setColor();
  paintRect();
}


int r0 = 0, N = 10;
void setup() {
  size(600, 600);
  background(255);
  fill(255, 255, 255);
  strokeWeight(4);
  smooth();
}

void draw() {
  r0++;
  if ( r0 > 255 ) {
    r0 -= 30;
    N--;
  }
  int r = r0, cnt = 0;
  while ( r > 0 && cnt < N ) {
    stroke(r, r, r);
    ellipse(width / 2, height / 2, r * 2, r * 2);
    cnt++;
    r -= 30;
  }
}

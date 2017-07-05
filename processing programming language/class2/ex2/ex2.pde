int N = 3;
void draw() {
  for ( int i = 0; i < 4; i++ ) {
    for ( int x = width / N; x < width; x += width / N ) {
      for ( int y = height / N; y < height; y += height / N ) {
        color c;
        c = color(int(i==0) * 255, int(i==2) * 255, int(i==1) * 255);
        stroke(c);
        line(x, (i / 2) * height, (i/2==1 ? 1-i%2 : i%2) * width, y);
      }
    }
  }
}

void setup() {
  size(600, 600);
  int a = int(true)*5;
  background(255);
}

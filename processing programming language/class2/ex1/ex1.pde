int[] rainbow_r = {87, 0, 0, 0, 255, 255, 255},
  rainbow_g = {0, 0, 255, 255, 255, 165, 0},
  rainbow_b = {255, 255, 255, 0, 0, 0, 0};
int body_width = 40, body_height = 20, wheel_radius = 5;
int car_xc;

void draw_rainbow() {
  int dr = 15, r0 = 400;
  strokeWeight(dr);
  for(int i = 6; i >= 0; i--){
    fill(255);
    stroke(rainbow_r[i], rainbow_g[i], rainbow_b[i]);
    ellipse(width, height, (r0 + dr * i) * 2, (r0 + dr * i) * 2);
  }
}

void draw_car_body(float x0, float y0) {
  fill(0);
  noStroke();
  rect((float)x0, (float)y0, body_width, body_height);
}

void draw_car_wheel(float x0, float y0) {
  fill(0);
  noStroke();
  ellipse(x0, y0, wheel_radius * 2, wheel_radius * 2);
}

void draw_car(int x0) {
  draw_car_body(x0, height - (wheel_radius + body_height));
  draw_car_wheel(x0 + body_width / 4.0, height - wheel_radius/2.0);
  draw_car_wheel(x0 + body_width * 3.0 / 4.0, height - wheel_radius/2.0);
}

void draw() {
  background(255);
  draw_rainbow();
  draw_car(car_xc--);
}

void setup() {
  car_xc = width;
  size(500, 500);
}

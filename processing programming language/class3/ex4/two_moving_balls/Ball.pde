class Ball {
  int rad;    // radius
  int x,y;    // center's position of the ball
  int speedx; // for horizontal speed
  int speedy; // for vertical speed
  color c;    // color of the ball
  
  boolean seperated(Ball b2) {
    return sqrt(sq(x - b2.x) + sq(y - b2.y)) > rad + b2.rad;
  }
  // constructor for initialization
  Ball() {
    rad = (int)floor(random(20, 41));
    speedx = (int)floor(random(-5, 6) );
    speedy = (int)floor(random(-5, 6) );
    c = color(random(255), random(255), random(255));
    x = (int)floor(random(rad, width - rad + 1));
    y = (int)floor(random(rad, height - rad + 1));
  }
 
  // display a ball with the given x, y and rad, filled with c
  void display() { 
    fill(c);
    noStroke();
    ellipse(x, y, rad*2, rad*2); 
  }
  
  // set the new position according to speedx and speedy 
  // and check if a bounce happens
  void moveBall() { 
    x += speedx;
    y += speedy;
    if ( x <= rad || x >= width - rad ) {
      speedx *= -1;
    }
    if ( y <= rad || y >= height -rad ) {
      speedy *= -1;
    }
  }
  
  // display a ball and let it move
  void play() { 
    display();
    moveBall();
  }
}

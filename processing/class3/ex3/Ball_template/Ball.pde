class Ball {
  int rad;    // radius
  int x,y;    // center's position of the ball
  int speedx; // for horizontal speed
  int speedy; // for vertical speed
  color c;    // color of the ball
  
  // constructor for initialization
  Ball() {
    rad = (int)random(20, 40);
    speedx = (int)floor(random(-5, 6) );
    speedy = (int)floor(random(-5, 6) );
    c = color(random(255), random(255), random(255));
    x = (int)random(rad, width - rad);
    y = (int)random(rad, height - rad);
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


import processing.core.*; 
import processing.xml.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class CarEg extends PApplet {

Car myCar;

public void setup(){
  size(400, 400);
  myCar = new Car();
}

public void draw(){

  background(255);
  myCar.drive();
  myCar.display();
}
class Car{
  int c;
  float x;
  float y;
  float speed;
  
  Car(){
    c = color(0);
    x = width/2;
    y = height/2;
    speed = 1;
  }  
  
  public void display() {
    rectMode(CENTER);
    fill(c);
    rect(x,y,20,10);
  }

  public void drive() { // Car now has a non-zero speed;
    x = x + speed;
    if (x > width)
      x = 0;
  }
} // end class
  static public void main(String args[]) {
    PApplet.main(new String[] { "--bgcolor=#F0F0F0", "CarEg" });
  }
}

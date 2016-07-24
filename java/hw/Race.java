/**
 * Race.java -- The Race Between Hare and Tortoise
 *
 */

import javax.swing.*;
import java.awt.*;
import javax.swing.JButton;
import javax.swing.JFrame;
import java.awt.event.*;

class RaceThread implements Runnable {
  
  Thread hare, tortoise;

  JFrame frame;
  Container pane;
  JLabel lbl_hare, lbl_tortoise;

  int x_hare, x_tortoise;
  
  public void init() {
    hare = new Thread(this);
    tortoise = new Thread(this);

    frame = new JFrame("The Race Between The Hare and The Tortoise");
    pane = frame.getContentPane();
    
    lbl_hare = new JLabel("hare");
    lbl_tortoise = new JLabel("tortoise");
    
    x_hare = 0;
    x_tortoise = 0;

    
  }
  
  public void start() {
    pane.setLayout(null);
    pane.add(lbl_hare);
    pane.add(lbl_tortoise);

    lbl_hare.setSize(50,50);
    lbl_tortoise.setSize(50,50);
    
    lbl_hare.setLocation(0,50);
    lbl_tortoise.setLocation(0,100);
    
    hare.start();
    tortoise.start();

    frame.setSize(500,500);
    frame.setVisible(true);

    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
  }

  public void run() {
    while (true) {
      if (Thread.currentThread() == hare) {
        lbl_hare.setLocation(x_hare++, 50);
        try {
          Thread.sleep(50);
        } catch (InterruptedException e) {
          e.printStackTrace();
        }
      } else {
        lbl_tortoise.setLocation(x_tortoise++, 100);
        try {
          Thread.sleep(50);
        } catch (InterruptedException e) {
          e.printStackTrace();
        }
      }
    }
  }
  
}

public class Race {
  static RaceThread thread;
  public static void main(String[] args) {
    thread = new RaceThread();
    thread.init();
    thread.start();
  }
}

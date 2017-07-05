/**
 * Race.java -- The Race Between Hare and Tortoise
 *
 */

import javax.swing.*;
import java.awt.*;
import javax.swing.JButton;
import javax.swing.JFrame;
import java.awt.event.*;

class Runner extends JLabel {
  private int when_to_stop,  // 停止时的clocks值
    stop_time_length,        // 停止的时间长度
    px_in_one_step,          // 每50ms，x坐标的增量（像素）
    clocks,                  // 记录自线程运行开始的时间（t / 50ms)
    yc;                      // 该label的y坐标
  private ImageIcon img_run, // 奔跑时的ImageIcon
    img_stop;                // 停下休息时的ImageIcon
  public Runner(int _when_to_stop,
                int _stop_time_length,
                int _px_in_one_step,
                int _yc,
                ImageIcon _img_run,
                ImageIcon _img_stop) {
    when_to_stop = _when_to_stop;
    stop_time_length = _stop_time_length;
    px_in_one_step = _px_in_one_step;
    yc = _yc;
    img_run = _img_run;
    img_stop = _img_stop;
  }
  public void init() {
    setSize(70, 70);    // 设置label大小
    setLocation(0, yc); // 设置初始位置
    setIcon(img_run);   // 设置图片
    clocks = 0;          
  }
  public void go() {
    clocks++;
    if (clocks <= 400 / px_in_one_step + stop_time_length  // 没有越过终点线
        && (clocks < when_to_stop                          
            || clocks > when_to_stop + stop_time_length)) {  // 没到休息的时间
      setLocation(getX() + px_in_one_step, yc);
      setIcon(img_run);
    } else {
      setIcon(img_stop);
    } 
  }
}

class RaceThread implements Runnable {
  
  Thread hare, tortoise, thread_draw_line;

  JFrame frame;
  Container pane;
  Runner runner_hare, runner_tortoise;
  
  public void init() {
    hare = new Thread(this);
    tortoise = new Thread(this);
    thread_draw_line = new Thread(this);

    // 对frame进行基本设置
    frame = new JFrame("The Race Between The Hare and The Tortoise");
    pane = frame.getContentPane();
    pane.setBackground(Color.white);

    // 初始化兔子label
    runner_hare = new Runner(50, 300, 3, 50, 
                             new ImageIcon(
                                 new ImageIcon("run_hare.jpg")
                                 .getImage()
                                 .getScaledInstance(70, 70, Image.SCALE_SMOOTH)),
                             new ImageIcon(
                                 new ImageIcon("stop_hare.jpg")
                                 .getImage()
                                 .getScaledInstance(70, 70, Image.SCALE_SMOOTH)));
    // 初始化乌龟label
    runner_tortoise = new Runner(50, 4, 1, 200, 
                             new ImageIcon(
                                 new ImageIcon("run_tortoise.jpg")
                                 .getImage()
                                 .getScaledInstance(70, 70, Image.SCALE_SMOOTH)),
                             new ImageIcon(
                                 new ImageIcon("stop_tortoise.jpg")
                                 .getImage()
                                 .getScaledInstance(70, 70, Image.SCALE_SMOOTH)));

  }
  
  public void start() {
    
    frame.setSize(500,350);
    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
    
    pane.setLayout(null);
    pane.add(runner_hare);
    pane.add(runner_tortoise);

    runner_hare.init();
    runner_tortoise.init();
    
    frame.setVisible(true);

    // 线程开始运行
    hare.start();
    tortoise.start();
    thread_draw_line.start();
  }

  public void run() {
    while (true) {
      if (Thread.currentThread() == thread_draw_line) {  // 绘终点线
        Graphics g = frame.getGraphics();
        g.setColor(Color.BLACK);
        g.drawLine(450, 5, 450, 345);
        try {
          Thread.sleep(20);
        } catch (InterruptedException e) {
          e.printStackTrace();
        }
      } else if (Thread.currentThread() == hare) {  // 绘兔子
        runner_hare.go();
        try {
          Thread.sleep(50);
        } catch (InterruptedException e) {
          e.printStackTrace();
        }
      } else {
        runner_tortoise.go();
        try {
          Thread.sleep(50);
        } catch (InterruptedException e) {  // 绘乌龟
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

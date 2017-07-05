/**
 * textAnalysis.java -- Text Analysis
 *
 * Written on 星期六, 23 七月 2016.
 */

import javax.swing.*;
import java.awt.*;
import javax.swing.JButton;
import javax.swing.JFrame;
import java.awt.event.*;

public class textAnalysis {
  public static int getWordCount(String s) {
    int ret = 0;
    for (int i = 0; i < s.length(); i++) {
      char ch = s.charAt(i);
      if ((ch >= 'a' && ch <= 'z') || (ch >= 'A' && ch <= 'Z')) {
        if (i == 0) {
          ret++;
        } else {
          char prev_ch = s.charAt(i - 1);
          if ((prev_ch < 'a' || prev_ch > 'z')
              && (prev_ch < 'A' || prev_ch > 'Z'))
            ret++;
        }
      }
    }
    return ret;
  }
  public static void main(String[] args) {
    // 设置frame标题，默认大小
    JFrame frame = new JFrame("Text Analysis");
    frame.setSize(300, 400);
    frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

    // 将frame的布局管理器设为GridBagLayout，两行一列
    Container pane = frame.getContentPane();
    pane.setLayout(new GridBagLayout());

    GridBagConstraints c = new GridBagConstraints();
    c.weightx = 1.0;  // 对于上下两个格子，x方向的空白区域全部填充
    c.fill = GridBagConstraints.BOTH; // 对于每个格子内部，组件把格子空间全部占满
    c.ipady = 40;

    // 设置中间容器lbl_btn_back，其上放置label和button
    Panel lbl_btn_back = new Panel();
    lbl_btn_back.setLayout(new GridLayout(1, 2));
    c.gridx = 0;
    c.gridy = 0;
    c.gridwidth = 1;
    c.gridheight = 1;
    pane.add(lbl_btn_back, c);

    // 设置供用户输入的文本域
    JTextArea text = new JTextArea();
    c.gridx = 0;
    c.gridy = 1;
    c.weightx = 1.0;
    c.weighty = 1.0;
    c.gridwidth = 2;
    pane.add(text, c);
    
    // 设置标签的初始内容，并加入lbl_btn_back上
    JLabel label = new JLabel("<html>行数：0<br>单词数：0<br>字符数：0</html>");
    lbl_btn_back.add(label);

    // 设置按钮的初始内容，并加入lbl_btn_back上
    JButton button = new JButton("统计字数");
    lbl_btn_back.add(button);

    // 绑定按钮事件，当用户点击按钮时更新label内容
    button.addActionListener(
        new ActionListener() {
          public void actionPerformed(ActionEvent e) {
            label.setText("<html>行数：" + text.getLineCount() + "<br>单词数：" + getWordCount(text.getText()) + "<br>字符数：" + text.getText().length() + "</html>");
          }
        });

    // 显示窗体
    frame.setVisible(true);
  }
}

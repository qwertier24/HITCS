package com.untitled.wordgraph;

import java.awt.BorderLayout;
import java.awt.Container;
import java.awt.Dimension;
import java.awt.Frame;
import java.awt.GridLayout;
import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.swing.ImageIcon;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JScrollPane;
import javax.swing.SwingConstants;
import javax.swing.UIManager;

import guru.nidi.graphviz.engine.Format;
import guru.nidi.graphviz.engine.Graphviz;
import guru.nidi.graphviz.model.Graph;

/**
 *
 * PanelPrint 类是打印图像用的
 */
public class PanelPrint extends JPanel {
    public JLabel image;
    public JFrame frame = new JFrame("PICTURE");

    public static void setLookAndFeel() {
        try {
            // UIManager.setLookAndFeel("com.sun.java.swing.plaf.gtk.GTKLookAndFeel");
            // UIManager.setLookAndFeel("javax.swing.plaf.metal.MetalLookAndFeel");
            UIManager.setLookAndFeel("com.sun.java.swing.plaf.windows.WindowsLookAndFeel");
            // UIManager.setLookAndFeel("com.sun.java.swing.plaf.nimbus.NimbusLookLookAndFeel");
        } catch (Exception e) {// ignore it
        }
    }

    public PanelPrint() {

        frame.setVisible(false);
        frame.setSize(800, 600);
        frame.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);
        frame.setLocationRelativeTo(null);

        Container pane = frame.getContentPane();
        pane.setLayout(new BorderLayout());

        image = new JLabel();

        // BufferedImage bufferedImage =
        // Graphviz.fromGraph(G).render(Format.PNG).toImage();
        // image.setIcon(new ImageIcon(bufferedImage));
        image.setHorizontalAlignment(SwingConstants.CENTER);
        image.setVerticalAlignment(SwingConstants.CENTER);
        JScrollPane temp = new JScrollPane(image);

        pane.add(temp, BorderLayout.CENTER);
        frame.repaint();

    }

    /*
     * 传入G，调用graphviz-java库渲染图像并显示在窗口中
     */
    public void showDirectedGraph(Graph G) {

        frame.setDefaultCloseOperation(JFrame.HIDE_ON_CLOSE);

        Container pane = frame.getContentPane();

        BufferedImage bufferedImage = Graphviz.fromGraph(G).render(Format.PNG).toImage();
        image.setIcon(new ImageIcon(bufferedImage));

        frame.repaint();
        frame.setVisible(true);
    }
}

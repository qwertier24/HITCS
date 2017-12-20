package com.untitled.wordgraph;

import java.io.*;
import java.util.*;

import static guru.nidi.graphviz.model.Factory.*;

import guru.nidi.graphviz.attribute.*;
import guru.nidi.graphviz.engine.*;
import guru.nidi.graphviz.model.*;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTabbedPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.UIManager;

import java.awt.Container;
import java.awt.Font;
import java.awt.GridLayout;
import java.awt.event.*;
import java.awt.image.BufferedImage;

/**
 * 整个项目的入口main函数是在这个class中 包含整体的gui框架
 * 
 * @author 马玉坤
 * @author 张宁
 */
public class App {

    /**
     *
     * showDirectedGraph 函数能够将我们的图片存储到硬盘之中
     * 
     * @param WordGraph 是我们写的一个类，包含了一个图的全部信息
     * @return void
     * @throws IOException
     */
    public static void showDirectedGraph(WordGraph G) throws IOException {
        Graph Gt = graph("example");
        for (HashMap.Entry<String, WordNode> entryNode : G.nodes.entrySet()) {
            WordNode wordNode = entryNode.getValue();
            wordNode.node = node(wordNode.text).with(wordNode.color);
        }
        for (HashMap.Entry<String, WordNode> entryNode : G.nodes.entrySet()) {
            WordNode wordNode = entryNode.getValue();
            for (HashMap.Entry<String, WordEdge> entryEdge : wordNode.edges.entrySet()) {
                WordEdge wordEdge = entryEdge.getValue();
                System.out.println(wordNode.text + " " + wordEdge.to.text + " " + wordEdge.weight);
                Gt = Gt.directed().with(wordNode.node
                        .link(to(wordEdge.to.node).with(Label.of(Integer.toString(wordEdge.weight)), wordEdge.color)));
            }
        }

        Graphviz.fromGraph(Gt).width(900).height(900).render(Format.PNG).toFile(new File("resources/test.png"));
    }

    /**
     *
     * setLookAndFeel 这个方法定义了gui的风格是windows风格
     * 
     * @return void
     */
    public static void setLookAndFeel() {
        try {
            // UIManager.setLookAndFeel("com.sun.java.swing.plaf.gtk.GTKLookAndFeel");
            // UIManager.setLookAndFeel("javax.swing.plaf.metal.MetalLookAndFeel");
            UIManager.setLookAndFeel("com.sun.java.swing.plaf.windows.WindowsLookAndFeel");
            // UIManager.setLookAndFeel("com.sun.java.swing.plaf.nimbus.NimbusLookLookAndFeel");
        } catch (Exception e) {// ignore it
        }
    }

    /**
     *
     * main函数生成了frame框架，将各个部分加入到框架之中
     * 
     * @throws IOException
     */
    public static void main(String[] args) throws IOException {
        Font myFont = new Font("Microsoft YaHei", Font.PLAIN, 15);
        setLookAndFeel();
        WordGraph G;
        JFrame frame = new JFrame("WORDGREAP");

        frame.setResizable(false);
        frame.setSize(800, 400);
        frame.setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);

        Container pane = frame.getContentPane();
        pane.setLayout(new GridLayout(1, 1));
        JTabbedPane tabPane = new JTabbedPane(JTabbedPane.TOP);
        tabPane.addTab("修改输入文本", new PanelOpenFile());
        tabPane.addTab("保存生成图", new PanelSaveImage());
        tabPane.addTab("查询桥接词", new PanelQueryBridge());
        tabPane.addTab("通过BW生成新文本", new PanelNewText());
        tabPane.addTab("最短路计算", new PanelShortestPath());
        tabPane.addTab("随机游走", new PanelRandomAccess());
        PanelApp.panelPrint = new PanelPrint();
        tabPane.setSelectedIndex(0);
        tabPane.setFont(myFont);
        pane.add(tabPane);
        frame.repaint();

        frame.setVisible(true);

        // showDirectedGraph(G);
        // queryBridgeWords(G, "civilizations", "out");
        // System.out.println(generateNewText(G, "Seek to explore@new and\nexciting
        // synergies"));
        // Graph g = graph("example1").directed().with(node("a").link(node("b")));
        // Graphviz.fromGraph(g).width(200).render(Format.PNG).toFile(new
        // File("example/ex1.png"));
    }
}

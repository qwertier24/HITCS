package com.untitled.wordgraph;

import java.io.*;
import java.util.*;

import static guru.nidi.graphviz.model.Factory.*;

import guru.nidi.graphviz.attribute.Style;
import guru.nidi.graphviz.engine.*;
import guru.nidi.graphviz.model.*;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComponent;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JPanel;
import javax.swing.JTabbedPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;
import javax.swing.UIManager;

import java.awt.Component;
import java.awt.Container;
import java.awt.Font;
import java.awt.Frame;
import java.awt.Graphics;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.GridLayout;
import java.awt.event.*;
import java.awt.image.BufferedImage;

/**
 *
 * PanelApp 类是每一个功能画板的超类，继承JPanel
 */
class PanelApp extends JPanel {
    public static Font myFont = new Font("Microsoft YaHei", Font.PLAIN, 15);
    // public static Font myFont = new Font("Sans Serif", Font.PLAIN, 15);
    public static String[] initialWords;
    public static WordGraph initialWG;
    public static PanelPrint panelPrint;

    /**
     *
     * @paarm text 单词列表
     * @return 根据单词列表生成的图WordGraph
     */
    public static WordGraph getWordGraph(String[] text) {
        WordGraph g = new WordGraph();

        // initialize the nodes
        for (int i = 0; i < text.length; i++)
            g.nodes.putIfAbsent(text[i], new WordNode(text[i]));

        // initialize the edges
        for (int i = 0; i + 1 < text.length; i++) {
            WordNode u = g.nodes.get(text[i]);
            WordNode v = g.nodes.get(text[i + 1]);
            u.addEdge(v);
        }

        return g;
    }

    /**
     * @param G 生成的图WordGraph G
     * @return 可以用来直接打印生成图像的Graph
     */
    public static Graph getGraph(WordGraph G) {
        Graph Gt = graph("wordgraph").directed();
        for (HashMap.Entry<String, WordNode> entryNode : G.nodes.entrySet()) {
            WordNode wordNode = entryNode.getValue();
            wordNode.node = node(wordNode.text).with(Style.FILLED, wordNode.color);
        }
        for (HashMap.Entry<String, WordNode> entryNode : G.nodes.entrySet()) {
            WordNode wordNode = entryNode.getValue();
            if (wordNode.edges.containsKey(wordNode.text)) {
                WordEdge wordEdge = wordNode.edges.get(wordNode.text);
                wordNode.node = wordNode.node
                        .link(to(wordEdge.to.node).with(Label.of(Integer.toString(wordEdge.weight)), wordEdge.color));
            }
            for (HashMap.Entry<String, WordEdge> entryEdge : wordNode.edges.entrySet()) {
                WordEdge wordEdge = entryEdge.getValue();
                System.out.println(wordNode.text + " " + wordEdge.to.text + " " + wordEdge.weight);
                if (wordNode.node == null || wordEdge.to.node == null) {
                    System.out.println("ERROR");
                }
                if (wordEdge.to.text.equals(wordNode.text))
                    continue;
                wordNode.node = wordNode.node
                        .link(to(wordEdge.to.node).with(Label.of(Integer.toString(wordEdge.weight)), wordEdge.color));
            }
            Gt = Gt.with(wordNode.node);
            System.out.println("currentNode:" + wordNode.text);
        }
        return Gt;
    }

    /**
     *
     * setLookAndFeel 这个方法定义了gui的风格是windows风格
     * 
     * @return void
     */
    public static void setLookAndFeel() {
        try {
            // UIManager.setLookAndFeel("com.sun.java.swing.plaf.windows.WindowsLookAndFeel");
            // UIManager.put("JTextArea.font", 1);
            // UIManager.put("Button.font", 5);
        } catch (Exception e) {// ignore it
        }
    }

    /**
     *
     * G表示我们的图，我们要查询word1 和Word2 的桥接词
     * 
     * @return 我们通过图G查询得到的桥接词列表
     */
    protected static String[] queryBridgeWordsList(WordGraph G, String word1, String word2) {
        if (G.nodes.containsKey(word1) == false)
            return new String[0];
        WordNode wordNode = G.nodes.get(word1);
        ArrayList<String> bridgeWords = new ArrayList<String>();
        for (WordEdge wordEdge : wordNode.edges.values()) {
            if (wordEdge.to.edges.containsKey(word2)) {
                bridgeWords.add(wordEdge.to.text);
                System.out.println("bridgeWords of " + word1 + " and " + word2 + ": " + wordEdge.to.text);
            }
        }
        return (String[]) bridgeWords.toArray(new String[0]);
    }
}

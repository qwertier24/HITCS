package com.untitled.wordgraph;

import java.io.*;
import java.util.*;

import static guru.nidi.graphviz.model.Factory.*;

import guru.nidi.graphviz.attribute.*;
import guru.nidi.graphviz.engine.*;
import guru.nidi.graphviz.model.*;

import javax.swing.ImageIcon;
import javax.swing.JButton;
import javax.swing.JComponent;
import javax.swing.JFileChooser;
import javax.swing.JFrame;
import javax.swing.JLabel;
import javax.swing.JOptionPane;
import javax.swing.JPanel;
import javax.swing.JTabbedPane;
import javax.swing.JTextArea;
import javax.swing.JTextField;

import java.awt.Component;
import java.awt.Container;
import java.awt.Frame;
import java.awt.Graphics;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.GridLayout;
import java.awt.event.*;
import java.awt.image.BufferedImage;

/**
 *
 * PanelQueryBridge 类是查询桥接词算法的实现 这个类继承自PanelApp 布局是采用了GridBagLayout
 */
class PanelQueryBridge extends PanelApp {
    private JTextField text1, text2, text3;
    private JButton button, showPictureButton;
    private JLabel image;
    GridBagLayout gridbag = new GridBagLayout();

    public void addComponent(Component component, int gridx, int gridy, int gridwidth, int gridheight, int weightx,
            int weighty, int fill, int anchor) {
        GridBagConstraints constraints = new GridBagConstraints();
        constraints.gridx = gridx;
        constraints.gridy = gridy;
        constraints.gridwidth = gridwidth;
        constraints.gridheight = gridheight;
        constraints.weighty = constraints.weighty;
        constraints.weightx = weightx;
        constraints.fill = fill;
        constraints.anchor = anchor;
        gridbag.setConstraints(component, constraints);
        add(component);
    }

    public PanelQueryBridge() {
        setLookAndFeel();

        setLayout(gridbag);
        /**
         * 定义需要的按钮，然后使用gridbaglayout布局方式加入到面板之中
         */
        JLabel toLable1 = new JLabel("请输入单词1:");
        toLable1.setFont(myFont);
        text1 = new JTextField(10);
        text1.setFont(myFont);
        addComponent(toLable1, 0, 0, 1, 1, 10, 100, GridBagConstraints.NONE, GridBagConstraints.EAST);
        addComponent(text1, 1, 0, 4, 1, 40, 100, GridBagConstraints.HORIZONTAL, GridBagConstraints.WEST);

        JLabel toLable2 = new JLabel("请输入单词2:");
        toLable2.setFont(myFont);
        text2 = new JTextField(10);
        text2.setFont(myFont);
        addComponent(toLable2, 5, 0, 1, 1, 10, 100, GridBagConstraints.NONE, GridBagConstraints.EAST);
        addComponent(text2, 6, 0, 4, 1, 40, 100, GridBagConstraints.HORIZONTAL, GridBagConstraints.WEST);

        button = new JButton("查询桥接词");
        button.setFont(myFont);
        addComponent(button, 1, 2, 2, 1, 20, 100, GridBagConstraints.NONE, GridBagConstraints.CENTER);

        showPictureButton = new JButton("显示图片");
        showPictureButton.setFont(myFont);
        addComponent(showPictureButton, 7, 2, 2, 1, 20, 100, GridBagConstraints.NONE, GridBagConstraints.CENTER);

        JLabel toLable3 = new JLabel("桥接词：");
        toLable3.setFont(myFont);
        text3 = new JTextField(30);
        text3.setFont(myFont);
        text3.setEditable(false);
        addComponent(toLable3, 0, 4, 1, 1, 10, 100, GridBagConstraints.NONE, GridBagConstraints.EAST);
        addComponent(text3, 1, 4, 9, 3, 90, 100, GridBagConstraints.HORIZONTAL, GridBagConstraints.WEST);
        /**
         * 给展示图片的按钮添加监听
         */
        showPictureButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                try {
                    WordGraph WG = getWordGraph(initialWords);
                    String word1 = text1.getText(), word2 = text2.getText();

                    if (WG.nodes.containsKey(word1) && WG.nodes.containsKey(word2)) {
                        String[] bridgeWords = queryBridgeWordsList(WG, text1.getText(), text2.getText());
                        WG.nodes.get(word1).color = Color.RED;
                        WG.nodes.get(word2).color = Color.BLUE;
                        for (String word : bridgeWords)
                            WG.nodes.get(word).color = Color.YELLOW;
                    }
                    Graph G = getGraph(WG);
                    panelPrint.showDirectedGraph(G);
                } catch (NullPointerException npe) {
                    JOptionPane.showMessageDialog(null, "请输入文本文件", "错误", JOptionPane.ERROR_MESSAGE);
                }
            }

        });
        /**
         * 给查询桥接词的按钮添加监听，并且定义按钮按下时候的操作
         */
        button.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                try {
                    String word1 = text1.getText(), word2 = text2.getText();
                    text3.setText(queryBridgeWords(initialWG, word1, word2));
                    if (panelPrint.frame.isVisible()) {
                        WordGraph WG = getWordGraph(initialWords);
                        if (WG.nodes.containsKey(word1) && WG.nodes.containsKey(word2)) {
                            String[] bridgeWords = queryBridgeWordsList(WG, text1.getText(), text2.getText());
                            WG.nodes.get(word1).color = Color.RED;
                            WG.nodes.get(word2).color = Color.BLUE;
                            for (String word : bridgeWords)
                                WG.nodes.get(word).color = Color.YELLOW;
                        }
                        Graph G = getGraph(WG);
                        panelPrint.showDirectedGraph(G);
                    }
                } catch (NullPointerException npe) {
                    JOptionPane.showMessageDialog(null, "请输入文本文件", "错误", JOptionPane.ERROR_MESSAGE);
                }
            }
        });
    }

    /**
     * @param G 有向图
     * @param word1 单词1
     * @param word2 单词2 
     * @return 桥接词存在表示从单词1直接到桥接词和桥接词直接到单词2的边同时存在，返回的字符是一句话
     *         表达了桥接词是不是存在的情况，和老师要求的语法完全符合
     */
    public static String queryBridgeWords(WordGraph G, String word1, String word2) {
        if (!G.nodes.containsKey(word1) && !G.nodes.containsKey(word2)) {
            return "No \"" + word1 + "\" and \"" + word2 + "\" in the graph!";
        } else if (!G.nodes.containsKey(word1)) {
            return "No \"" + word1 + "\" in the graph!";
        } else if (!G.nodes.containsKey(word2)) {
            return "No \"" + word2 + "\" in the graph!";
        } else {
            String[] words = queryBridgeWordsList(G, word1, word2);
            if (words.length == 0) {
                return "No bridge words from \"" + word1 + "\" to \"" + word2 + "\"!";
            } else if (words.length == 1) {
                return "The bridge word from \"" + word1 + "\" to \"" + word2 + "\" is: " + words[0];
            } else {
                String hint = "The bridge words from \"" + word1 + "\" to \"" + word2 + "\" are: " + words[0];
                for (int i = 1; i + 1 < words.length; i++) {
                    hint += ", " + words[i];
                }
                hint += " and " + words[words.length - 1];
                return hint;
            }
        }
    }
}
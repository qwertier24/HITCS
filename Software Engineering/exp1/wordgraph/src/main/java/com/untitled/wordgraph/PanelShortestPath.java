package com.untitled.wordgraph;

import java.io.*;
import java.util.*;
import java.util.Map.Entry;

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
 * 最短路求解模块
 */
public class PanelShortestPath extends PanelApp {
    private JTextField text1, text2;
    private JTextArea text3;
    private JButton button, showPictureButton, changeEndButton, changeShortestButton;
    GridBagLayout gridbag = new GridBagLayout();
    private WordGraph WG;
    private int currentKth;
    private String srcWord, destWord;

    /*
     * 向该JPanel添加组件
     */
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

    public PanelShortestPath() {
        setLookAndFeel();
        setLayout(gridbag);

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

        button = new JButton("查询最短路");
        button.setFont(myFont);
        addComponent(button, 0, 2, 2, 1, 20, 100, GridBagConstraints.NONE, GridBagConstraints.CENTER);

        showPictureButton = new JButton("图片显示路径");
        showPictureButton.setFont(myFont);
        addComponent(showPictureButton, 2, 2, 2, 1, 20, 100, GridBagConstraints.NONE, GridBagConstraints.EAST);
        showPictureButton.setEnabled(false);

        changeShortestButton = new JButton("切换最短路径");
        changeShortestButton.setFont(myFont);
        addComponent(changeShortestButton, 6, 2, 2, 1, 20, 100, GridBagConstraints.NONE, GridBagConstraints.WEST);
        changeShortestButton.setEnabled(false);

        changeEndButton = new JButton("切换终点");
        changeEndButton.setFont(myFont);
        addComponent(changeEndButton, 8, 2, 2, 1, 20, 100, GridBagConstraints.NONE, GridBagConstraints.CENTER);
        changeEndButton.setEnabled(false);

        JLabel toLable3 = new JLabel("最短路径：");
        toLable3.setFont(myFont);
        text3 = new JTextArea(100, 100);
        text3.setFont(myFont);
        addComponent(toLable3, 0, 1, 1, 1, 10, 100, GridBagConstraints.NONE, GridBagConstraints.EAST);
        addComponent(text3, 1, 1, 9, 1, 90, 100, GridBagConstraints.HORIZONTAL, GridBagConstraints.WEST);

        showPictureButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                try {
                    Graph G = getGraph(WG);
                    panelPrint.showDirectedGraph(G);
                } catch (NullPointerException npe) {
                    JOptionPane.showMessageDialog(null, "请输入文本文件", "错误", JOptionPane.ERROR_MESSAGE);
                }
            }
        });

        /*
         * 定义“计算最短路”按钮的时间监听
         */
        button.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                srcWord = text1.getText();
                destWord = text2.getText();
                currentKth = 1;
                WG = getWordGraph(initialWords);
                text3.setText(printKthShortestPath(WG, text1.getText(), text2.getText(), 1));
                showPictureButton.setEnabled(true);
                changeEndButton.setEnabled(true);
                changeShortestButton.setEnabled(true);
                if (panelPrint.frame.isVisible()) {
                    Graph G = getGraph(WG);
                    panelPrint.showDirectedGraph(G);
                }
            }
        });

        /*
         * 定义“切换终点”按钮的事件监听
         */
        changeEndButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                WG = getWordGraph(initialWords);
                boolean flag = false, flag2 = false;
                Iterator<WordNode> wnIterator = WG.nodes.values().iterator();
                Iterator<WordNode> firstNode = WG.nodes.values().iterator();

                while (wnIterator.hasNext() && ((WordNode) wnIterator.next()).text.equals(destWord) == false)
                    ;

                if (wnIterator.hasNext()) {
                    destWord = ((WordNode) wnIterator.next()).text;
                } else {
                    destWord = ((WordNode) firstNode.next()).text;
                }
                System.out.println(destWord);
                text1.setText(srcWord);
                text2.setText(destWord);
                currentKth = 1;
                WG = getWordGraph(initialWords);
                text3.setText(printKthShortestPath(WG, text1.getText(), text2.getText(), 1));
                if (panelPrint.frame.isVisible()) {
                    Graph G = getGraph(WG);
                    panelPrint.showDirectedGraph(G);
                }
            }
        });
        
        /*
         * 定义切换最短路按钮的事件监听
         */
        changeShortestButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                currentKth = currentKth + 1;
                WG = getWordGraph(initialWords);
                text1.setText(srcWord);
                text2.setText(destWord);
                text3.setText(printKthShortestPath(WG, srcWord, destWord, currentKth));
            }
        });
    }

    /**
     * @parm 传入有向图G，单词word1和单词word2
     * @return word1在有向图G中到word2的最短路上的节点组成的文本
     */
    public String calcShortestPath(WordGraph G, String word1, String word2) {
        if (!G.nodes.containsKey(word1) && !G.nodes.containsKey(word2)) {
            return "No \"" + word1 + "\" and \"" + word2 + "\" in the graph!";
        } else if (!G.nodes.containsKey(word1)) {
            return "No \"" + word1 + "\" in the graph!";
        } else if (!G.nodes.containsKey(word2)) {
            return "No \"" + word2 + "\" in the graph!";
        } else {
            int numberPaths = dijkstra(G, word1, word2);
            if (G.nodes.get(word2).distance == Integer.MAX_VALUE) {
                return "No paths from \"" + word1 + "\" to \"" + word2 + "\" in the graph!";
            }
            srcWord = word1;
            destWord = word2;
            currentKth = 1;
            ArrayList<String> pathWords = getKthShortestPath(G, word1, word2, 1);
            return String.format("\"%s\" 到 \"%s\" 有 %d 条最短路，其长度为%d。其中字典序第%d小的最短路为：\n%s\n", word1, word2, numberPaths,
                    G.nodes.get(word2).distance, currentKth, String.join("->", pathWords));
        }
    }

    /**
     * @param G 有向图
     * @param word1 单词1
     * @param word2 单词2
     * @param k 字典序排名
     * @return word1在有向图G中到word2的所有最短路中，字典序第k小的最短路的查询结果
     */
    static String printKthShortestPath(WordGraph WG, String srcWord, String destWord, int k) {
        if (!WG.nodes.containsKey(srcWord) && !WG.nodes.containsKey(destWord)) {
            return "No \"" + srcWord + "\" and \"" + destWord + "\" in the graph!";
        } else if (!WG.nodes.containsKey(srcWord)) {
            return "No \"" + srcWord + "\" in the graph!";
        } else if (!WG.nodes.containsKey(destWord)) {
            return "No \"" + destWord + "\" in the graph!";
        } else {
            try {
                int dist = dijkstra(WG, srcWord, destWord);
                if (dist == Integer.MAX_VALUE) {
                    return "No paths from \"" + srcWord + "\" to \"" + destWord + "\" in the graph!";
                }

                if (k > WG.nodes.get(srcWord).countPaths)
                    k = WG.nodes.get(srcWord).countPaths;
                System.out.printf("%d %d", dist, k);
                ArrayList<String> words = getKthShortestPath(WG, srcWord, destWord, k);

                int numberPaths = WG.nodes.get(srcWord).countPaths;
                for (int i = 0; i + 1 < words.size(); i++) {
                    WG.nodes.get(words.get(i)).edges.get(words.get(i + 1)).color = Color.GREEN;
                    WG.nodes.get(words.get(i)).color = Color.GREEN;
                }
                WG.nodes.get(srcWord).color = Color.RED;
                WG.nodes.get(destWord).color = Color.BLUE;

                if (panelPrint.frame.isVisible()) {
                    Graph G = getGraph(WG);
                    panelPrint.showDirectedGraph(G);
                }
                return String.format("\"%s\" 到 \"%s\" 有 %d 条最短路，其长度为%d。其中字典序第%d小的最短路为：\n%s\n", srcWord, destWord,
                        numberPaths, dist, k, String.join("->", words));
            } catch (NullPointerException npe) {
                JOptionPane.showMessageDialog(null, "请输入文本文件", "错误", JOptionPane.ERROR_MESSAGE);
            }
            return "";
        }
    }

    /**
     * @param u 当前节点
     * @param dest 终点
     * @return 从u出发，到dest的不同的最短路的数目
     */
    public static int countShortestPaths(WordNode u, WordNode dest) {
        if (u.visited)
            return u.countPaths;
        u.visited = true;
        u.countPaths = 0;
        if (u == dest) {
            u.countPaths = 1;
        } else {
            for (WordNode v : u.suc) {
                u.countPaths += countShortestPaths(v, dest);
            }
        }
        return u.countPaths;
    }

    /**
     * @param G 有向图
     * @param word1 单词1
     * @param word2 单词2
     * @param k 字典序排名
     * @return 从u出发，到dest的不同的最短路的数目
     */
    public static ArrayList<String> getKthShortestPath(WordGraph G, String word1, String word2, int k) {
        WordNode currentNode = G.nodes.get(word1);
        ArrayList<String> pathWords = new ArrayList<String>();
        while (currentNode != null && !currentNode.text.equals(word2)) {
            pathWords.add(currentNode.text);
            for (WordNode nextNode : currentNode.suc) {
                if (nextNode.countPaths < k) {
                    k -= nextNode.countPaths;
                } else {
                    currentNode = nextNode;
                    break;
                }
            }
        }
        pathWords.add(word2);
        // Collections.reverse(pathWords);
        return pathWords;
    }
    
    /**
     * @param G 有向图
     * @param word1 单词1
     * @param word2 单词2
     * @return word1 到 word2 的最短路的数目
     */
    public static int dijkstra(WordGraph G, String word1, String word2) {
        for (HashMap.Entry<String, WordNode> entryNode : G.nodes.entrySet()) {
            WordNode wordNode = entryNode.getValue();
            wordNode.distance = Integer.MAX_VALUE;
            wordNode.pre = new HashSet<WordNode>();
            wordNode.suc = new TreeSet<WordNode>();
            wordNode.visited = false;
        }

        G.nodes.get(word1).distance = 0;
        while (true) {
            int mindist = Integer.MAX_VALUE;
            WordNode minnode = null;

            for (HashMap.Entry<String, WordNode> entryNode : G.nodes.entrySet()) {
                WordNode wordNode = entryNode.getValue();
                if (wordNode.distance < mindist && !wordNode.visited) {
                    mindist = wordNode.distance;
                    minnode = wordNode;
                }
            }
            if (minnode == null)
                break;
            System.out.printf("dist[%s]=%d\n", minnode.text, minnode.distance);

            minnode.visited = true;

            for (WordEdge wordEdge : minnode.edges.values()) {
                if (wordEdge.to.distance > minnode.distance + wordEdge.weight) {
                    wordEdge.to.distance = minnode.distance + wordEdge.weight;
                    wordEdge.to.pre = new HashSet<WordNode>();
                    wordEdge.to.pre.add(minnode);
                } else if (wordEdge.to.distance == minnode.distance + wordEdge.weight) {
                    wordEdge.to.pre.add(minnode);
                }
            }
        }

        WordNode currentNode = G.nodes.get(word2);
        if (currentNode.distance == Integer.MAX_VALUE)
            return Integer.MAX_VALUE;

        for (Entry<String, WordNode> entryNode : G.nodes.entrySet()) {
            WordNode u = entryNode.getValue();
            u.visited = false;
            for (WordNode v : u.pre) {
                v.suc.add(u);
                System.out.printf("%s to %s\n", v.text, u.text);
            }
        }

        countShortestPaths(G.nodes.get(word1), G.nodes.get(word2));
        return G.nodes.get(word2).distance;
    }
}

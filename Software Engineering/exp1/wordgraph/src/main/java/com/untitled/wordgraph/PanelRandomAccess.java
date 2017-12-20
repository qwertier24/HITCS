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

import java.awt.BorderLayout;
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
 * PanelRandomAccess 类是随机游走算法的实现
 * 当用户点击“开始/重新开始”按钮的时候，程序随机的从图中选择一个节点，然后每当用户点击“下一步”的时候 程序就以此为起点沿出边进行随机遍历，记录经
 * 过的所有节点和边，直到出现第一条重复的边 为止，或者进入的某个节点不存在出边为止。 这个类继承自PanelApp 布局是采用了GridBagLayout
 */
public class PanelRandomAccess extends PanelApp {
    private JTextArea outputTextArea;
    private JButton restart, nextStep, showPictures;
    private WordGraph WG;
    private WordNode currentNode;
    Random rand;
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

    /**
     * @return 随机选择到的与当前节点连接的下一个WordNode对象
     */
    private WordNode getNextNode() {
        /**
         * 由于HashMap对象不支持随机访问，我们通过HashMap生成一个Object数组， 再生成一个随机数，来对节点进行随机访问，找到当前节点的下一个节点
         */
        Object[] edges = currentNode.edges.values().toArray();
        /**
         * flag表示当前节点是不是还存在没有走过的边
         */
        boolean flag = false;
        for (int i = 0; i < edges.length; i++) {
            if (!((WordEdge) edges[i]).visited)
                flag = true;
        }
        if (flag == false)
            return null;
        int i = rand.nextInt(edges.length);
        while (((WordEdge) edges[i]).visited == true) {
            i = rand.nextInt(edges.length);
        }
        ((WordEdge) edges[i]).visited = true;
        ((WordEdge) edges[i]).color = Color.BLUE;
        return ((WordEdge) edges[i]).to;
    }

    /**
     * @return 随机选择一个WordNode对象作为初始的节点
     */
    private WordNode getFirstNode() {
        Object[] nodes = (Object[]) WG.nodes.values().toArray();
        return (WordNode) nodes[rand.nextInt(nodes.length)];
    }

    public PanelRandomAccess() {
        setLookAndFeel();
        setLayout(gridbag);

        rand = new Random();
        /*
         * JLabel toLable1=new JLabel("路径文本:");toLable1.setFont(myFont);
         * addComponent(toLable1,0
         * ,0,1,1,10,100,GridBagConstraints.NONE,GridBagConstraints.EAST);
         */

        restart = new JButton("开始/重新开始");
        restart.setFont(myFont);
        addComponent(restart, 1, 0, 2, 1, 20, 100, GridBagConstraints.NONE, GridBagConstraints.CENTER);

        nextStep = new JButton("下一步");
        nextStep.setFont(myFont);
        addComponent(nextStep, 4, 0, 2, 1, 20, 100, GridBagConstraints.NONE, GridBagConstraints.CENTER);

        showPictures = new JButton("显示图片");
        showPictures.setFont(myFont);
        addComponent(showPictures, 7, 0, 2, 1, 20, 100, GridBagConstraints.NONE, GridBagConstraints.CENTER);

        JPanel temp = new JPanel();
        temp.setLayout(new BorderLayout());
        outputTextArea = new JTextArea("路径文本", 10, 10);
        outputTextArea.setFont(myFont);
        temp.add(outputTextArea, BorderLayout.SOUTH);
        addComponent(temp, 0, 1, 10, 1, 10, 100, GridBagConstraints.HORIZONTAL, GridBagConstraints.CENTER);

        outputTextArea.setLineWrap(true);

        restart.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                try {
                    WG = getWordGraph(initialWords);
                    currentNode = getFirstNode();
                    currentNode.color = Color.RED;
                    outputTextArea.setText(currentNode.text);
                    if (panelPrint.frame.isVisible()) {
                        Graph G = getGraph(WG);
                        panelPrint.showDirectedGraph(G);
                    }
                } catch (NullPointerException npe) {
                    JOptionPane.showMessageDialog(null, "请输入文本文件", "错误", JOptionPane.ERROR_MESSAGE);
                }
            }
        });

        showPictures.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                try {
                    Graph G = getGraph(WG);
                    panelPrint.showDirectedGraph(G);
                } catch (NullPointerException npe) {
                }
            }
        });

        nextStep.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) throws NullPointerException {
                if (currentNode == null)
                    return;
                WordNode lastNode = currentNode;
                currentNode = getNextNode();
                if (currentNode == null) {
                    outputTextArea.setText(outputTextArea.getText() + "\n游走过程结束，无法继续游走");
                    return;
                }
                lastNode.color = Color.YELLOW;
                currentNode.color = Color.RED;
                outputTextArea.setText(outputTextArea.getText() + "->" + currentNode.text);
                if (panelPrint.frame.isVisible()) {
                    Graph G = getGraph(WG);
                    panelPrint.showDirectedGraph(G);
                }
            }
        });

    }
}

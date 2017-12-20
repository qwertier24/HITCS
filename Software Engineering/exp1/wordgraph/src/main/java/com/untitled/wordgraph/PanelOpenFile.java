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
import java.awt.Rectangle;
import java.awt.event.*;
import java.awt.image.BufferedImage;

/**
 *
 * PanelOpenFile 类是用来打开文件的 这个类继承自PanelApp 布局是采用了GridBagLayout
 */
class PanelOpenFile extends PanelApp {
    public JButton openFileButton;
    public JButton showPictureButton;
    public JLabel image;
    public String s;

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

    public PanelOpenFile() {
        setLookAndFeel();
        setLayout(gridbag);

        final PanelOpenFile thisLabel = this;

        openFileButton = new JButton("选择文本文件");
        openFileButton.setFont(myFont);

        showPictureButton = new JButton("显示图片");
        showPictureButton.setFont(myFont);

        JPanel temp = new JPanel();
        temp.setLayout(new GridLayout(1, 2, 100, 100));
        temp.add(openFileButton);
        temp.add(showPictureButton);
        addComponent(temp, 2, 3, 0, 0, 2, 1, GridBagConstraints.NONE, GridBagConstraints.CENTER);
        image = new JLabel();
        openFileButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                JFileChooser fileChooser = new JFileChooser();
                fileChooser.showOpenDialog(thisLabel);
                File file = fileChooser.getSelectedFile();
                // panelPrint = new PanelPrint();
                try {
                    s = file.getAbsolutePath();
                    WordGraph WG = createDirectedGraph(s);
                    initialWG = WG;
                } catch (IOException ioe) {
                } catch (NullPointerException noe) {
                }
            }
        });

        showPictureButton.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {

                try {
                    WordGraph WG = initialWG;
                    Graph G = getGraph(WG);
                    BufferedImage bufferedImage = Graphviz.fromGraph(G).width(800).render(Format.SVG).toImage();
                    image.setIcon(new ImageIcon(bufferedImage));

                    panelPrint.showDirectedGraph(G);
                } catch (NullPointerException npe) {
                    JOptionPane.showMessageDialog(null, "请输入文本文件", "错误", JOptionPane.ERROR_MESSAGE);
                }
            }

        });

    }

    /**
     * @param filename 表示文件的名字
     * @return 返回的WordGraph就是我们通过文件名字找到对应文件生成出来的图
     */
    public static WordGraph createDirectedGraph(String filename) throws IOException {
        String fileContent = readFile(filename);
        initialWords = getWordsList(fileContent);
        return getWordGraph(initialWords);
    }

    public static String[] getWordsList(String content) throws IOException {
        String[] words = content.toLowerCase().replaceAll("[^a-zA-Z ]", " ").replaceAll("\\s+", " ").trim().split(" ");
        return words;
    }

    /**
     * @param filePath 文件的路径
     * @return 返回String对象是文件之中所有内容
     */
    public static String readFile(String filePath) throws IOException {
        StringBuffer readBuffer = new StringBuffer();
        InputStream is = new FileInputStream(filePath);
        String line;
        BufferedReader reader = new BufferedReader(new InputStreamReader(is));
        line = reader.readLine();
        while (line != null) {
            readBuffer.append(line);
            readBuffer.append("\n");
            line = reader.readLine();
        }
        reader.close();
        is.close();
        return readBuffer.toString();
    }

}

package com.untitled.wordgraph;

import java.awt.Component;
import java.awt.GridBagConstraints;
import java.awt.GridBagLayout;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.io.File;
import java.io.IOException;

import javax.swing.JButton;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;

import guru.nidi.graphviz.engine.Format;
import guru.nidi.graphviz.engine.Graphviz;
import guru.nidi.graphviz.model.Graph;

/**
 *
 * PanelSaveImage 类是存储图像到硬盘的 它继承自PanelApp 布局是采用了GridBagLayout
 */
class PanelSaveImage extends PanelApp {

    public JButton button;

    GridBagLayout gridbag = new GridBagLayout();

    /**
     *
     * addComponent 方法定义了将组件如何加入到画板
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

    public PanelSaveImage() {
        setLookAndFeel();
        setLayout(gridbag);

        final PanelSaveImage thisLabel = this;
        button = new JButton("选择图像文件(PNG格式)");
        button.setFont(myFont);
        addComponent(button, 2, 3, 0, 0, 2, 1, GridBagConstraints.NONE, GridBagConstraints.CENTER);
        /**
         * 每当用户点击按钮的时候就运行下面的程序 将图片保存到指定的路径
         */
        final PanelSaveImage thisPanel = this;
        button.addActionListener(new ActionListener() {
            public void actionPerformed(ActionEvent e) {
                JFileChooser fileChooser = new JFileChooser();
                try {
                    fileChooser.showSaveDialog(thisLabel);
                    File file = fileChooser.getSelectedFile();
                    String s = file.getAbsolutePath();
                    try {
                        WordGraph WG = getWordGraph(initialWords);
                        Graph g = getGraph(WG);
                        Graphviz.fromGraph(g).render(Format.PNG).toFile(new File(s));
                    } catch (IOException ioe) {
                    }
                } catch (NullPointerException npe) {
                    JOptionPane.showMessageDialog(null, "请输入文本文件", "错误", JOptionPane.ERROR_MESSAGE);
                }
            }

        });

    }
}
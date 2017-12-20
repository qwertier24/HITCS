package com.untitled.wordgraph;

import java.util.HashMap;
import java.util.HashSet;
import java.util.TreeSet;

import static guru.nidi.graphviz.model.Factory.*;
import guru.nidi.graphviz.attribute.*;
import guru.nidi.graphviz.engine.*;
import guru.nidi.graphviz.model.*;

/**
 *
 * WordNode 类是存储图像中的节点的 除了一个类变量，每一个WordNode对象包含七个属性，三个方法
 * 属性HashMap记录了和本节点相邻单词到节点对象的对应关系 text 记录节点的单词 color 记录节点的颜色 node 用来绘制图像
 * Pre记录最短路算法之中节点的前驱 distance 记录了距离起点的最短路径的距离 visited 记录节点在最短路算法中是不是已经被访问过了
 */
public class WordNode implements Comparable<WordNode> {
    static final int INF = Integer.MAX_VALUE;
    public HashMap<String, WordEdge> edges;
    public String text;

    // for painting
    public Color color;
    public Node node;

    // for calculating the shortest path
    public HashSet<WordNode> pre;
    public TreeSet<WordNode> suc;
    public int distance;
    public boolean visited;
    public int countPaths;

    public WordNode(String _text) {
        text = _text;
        edges = new HashMap<String, WordEdge>();
        color = Color.WHITE;
    }

    public void addEdge(WordNode v) {
        if (edges.containsKey(v.text)) {
            edges.get(v.text).incWeight();
        } else {
            edges.put(v.text, new WordEdge(v));
        }
    }

    public boolean hasEdge(String text) {
        return edges.containsKey(text);
    }

    public int compareTo(WordNode rhs) {
        return text.compareTo(rhs.text);
    }
}

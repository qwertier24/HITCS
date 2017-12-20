package com.untitled.wordgraph;

import guru.nidi.graphviz.attribute.Color;

/**
 *
 * WordEdge 类是存储图像中的边 每一个WordEdge对象包含四个属性，两个方法 to 记录有向边指向的节点 weight记录边上的权重 color
 * 记录边的颜色 visited 记录边在随机游走过程之中是不是被访问过了
 */
public class WordEdge {
    public WordNode to;
    public int weight;
    public Color color;
    public boolean visited;

    public WordEdge(WordNode _to) {
        to = _to;
        weight = 1;
        color = Color.BLACK;
        visited = false;
    }

    public void incWeight() {
        weight += 1;
    }
}

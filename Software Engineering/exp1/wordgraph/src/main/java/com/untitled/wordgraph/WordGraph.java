package com.untitled.wordgraph;

import java.util.HashMap;

import static guru.nidi.graphviz.model.Factory.*;
import guru.nidi.graphviz.attribute.*;
import guru.nidi.graphviz.engine.*;
import guru.nidi.graphviz.model.*;

/**
 *
 * WordGraph 类是存储图像的 包含一个属性，一个方法 HashMap记录了单词到节点对象的对应关系 WordGraph的构造函数生成了HashMap
 */
public class WordGraph {
    public HashMap<String, WordNode> nodes;
    public String color;

    public WordGraph() {
        nodes = new HashMap<String, WordNode>();
        color = "black";
    }
}

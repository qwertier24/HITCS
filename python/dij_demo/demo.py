#!/usr/bin/env python 
from Tkinter import *
from ttk import *
from tkFont import *
import random
import tkFont

n = 7
INF = 100000
id = ["T"] + ['V'+chr(i+1 + ord('0')) for i in range(n)]
T = set()
dis=[0]+[INF for i in range(n-1)]
x = [0 for i in range(n)]
y = [0 for i in range(n)]
edge = [[INF for i in range(n)] for i in range(n)]

def too_close():
    for i in range(n):
        for j in range(n):
            if i!=j and (x[i]-x[j])**2 + (y[i]-y[j])**2 < 20000:
                return False
    return True

mark=[0 for i in range(n)]
vis=[False for i in range(n)]

def dfs(u):
    vis[u]=True
    for i in range(n):
        if edge[u][i]<INF and not vis[i]:
            dfs(i)
def not_through():
    global vis
    vis=[0 for i in range(n)]
    mark=[0 for i in range(n)]
    dfs(0)
    for i in range(n):
        if not vis[i]:
            return True
    return False

def init_graph():
    global n
    while not_through():
        for i in range(n):
            for j in range(i+1):
                if j == i:
                    continue
                r = random.randint(0,3)
                if r==0:
                    r = random.randint(0,1)
                    if r:
                        edge[i][j] = random.randint(1,n)
                        edge[j][i] = INF
                    else:
                        edge[j][i] = random.randint(1,n)
                        edge[i][j] = INF
                else:
                    edge[i][j] = edge[j][i] = INF
    while not too_close():
        for i in range(n):
            x[i] = random.randint(100,700)
            y[i] = random.randint(100,500)


#maintain the graph
W1=4
ra=15
def draw_graph():
    for i in range(n):
        for j in range(n):
            if edge[i][j]<INF:
                canvas.create_line(x[i],y[i],x[j],y[j],fill="black", arrow="last",arrowshape=[40,40,5],width=W1)
    for i in range(n):
        canvas.create_oval(x[i]-ra,y[i]-ra,x[i]+ra,y[i]+ra,fill=((i in T) and  "#AAA" or "white"))
        canvas.create_text(x[i],y[i],text=id[i+1])
        if dis[i]<INF:
            for j in range(n):
                if dis[j] + edge[j][i] == dis[i]:
                    print i,j
                    canvas.create_line(x[j],y[j],x[i],y[i],fill="blue",width=W1, arrow="last",arrowshape=[40,40,5])
                    canvas.create_oval(x[j]-ra,y[j]-ra,x[j]+ra,y[j]+ra,fill=(j in T) and "#AAA" or "white")
                    canvas.create_oval(x[i]-ra,y[i]-ra,x[i]+ra,y[i]+ra,fill=(i in T) and "#AAA" or "white")
                    canvas.create_text(x[j],y[j],text=id[j+1])
                    canvas.create_text(x[i],y[i],text=id[i+1])
    for i in range(n):
        for j in range(n):
            if edge[i][j]<INF:
                canvas.create_text((x[j]+x[i])/2,(y[j]+y[i])/2,text=str(edge[i][j]),font=WEIGHT, fill="red")

#maintain the table
def init_table():
    for i in range(len(id)):
        tree.column(id[i], width=60 + (i==0) * 40, anchor='center')
        tree.heading(id[i],text=id[i])

line_cnt = 0
def insert_line():
    cur_dis=["INF" for i in range(n)]
    for i in range(n):
        if(dis[i]<INF):
            cur_dis[i]=str(dis[i])
    global line_cnt
    line_cnt += 1
    tree.insert("",line_cnt,values=tuple([str([i+1 for i in T]).strip('[]')]+cur_dis))

#maintain the DIJK
def next_DIJK():
    mind=INF
    minu=INF
    for i in range(n):
        if i not in T and dis[i]<mind:
            minu=i
            mind=dis[i]
    T.add(minu)
    for i in range(n):
        if dis[i]>dis[minu]+edge[minu][i]:
            dis[i]=dis[minu]+edge[minu][i]

def next_step():
    next_DIJK()
    insert_line()
    draw_graph()


window=Tk()
window.title("Sample for Dijkstra")
frame = Frame(window)
frame.pack()

WEIGHT = tkFont.Font(family="Arial",size=20)
#init the canvas
canvas = Canvas(window, width = 800, height = 600, bg = "white")
canvas.pack()

#init graph
init_graph()

#init the table
tree = Treeview(window,columns=tuple(id))
tree.pack()
init_table()

#init the DIJK
next_step()

#init the button
btNext = Button(frame, text = "Next", command = next_step)
btNext.grid(row = 1, column = 1)
btQuit = Button(frame, text = "Quit", command = window.quit)
btQuit.grid(row = 1, column = 2)

window.mainloop()


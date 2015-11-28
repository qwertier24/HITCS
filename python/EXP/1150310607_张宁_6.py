# -*- coding: utf-8 -*-
"""
Spyder Editor

This temporary script file is located here:
C:\Documents and Settings\Administrator\.spyder2\.temp.py
"""
import sys
sys.stdin = open("in.txt","r")
sys.stdout = open("out.txt","w")


########################################################################
#define a function to carry out the bubbling rank
def bubbling(i):
    loop=True # loop的引入可以使得程序更快地结束，一旦完成排序就可以提前结束
    top=len(grades)-1
    while loop:
        loop=False
        for j in range(0,top):
            if grades[j][i]<grades[j+1][i]:#当两个人的成绩不同时执行该操作
                #interchange the location of the two lists
                assist=grades[j+1]
                grades[j+1]=grades[j]
                grades[j]=assist
                loop=True
   # if the interchange is taken then loop again until no interchange is taken              
            
            if grades[j][i]==grades[j+1][i]:#当两个人的该科成绩相同时执行该操作
                if grades[j][7]<grades[j+1][7]:#按照两个人的总成绩进行排序
                    assist=grades[j+1]
                    grades[j+1]=grades[j]
                    grades[j]=assist
                    loop=True
                else:
                    if grades[j][2:]<grades[j+1][2:]:#按照两个人的其他科成绩进行排序
                        assist=grades[j+1]
                        grades[j+1]=grades[j]
                        grades[j]=assist
                        loop=True  
        top-=1                
##############################################################
def choice(m):#定义选择排序函数
        for j in range(0,len(grades)-1):
            index=j#记录最小值的索引信息
            for i in range(j+1,len(grades)):
                
               if grades[i][m]>grades[index][m]:
                   index=i
                    
 # if the interchange is taken then loop again until no interchange is taken
               if grades[i][m]==grades[index][m]:
                   if grades[i][2:]>grades[index][2:]:
                       index=i
            #交换两个元素     
            assist=grades[index]
            grades[index]=grades[j]
            grades[j]=assist
 ########################################################## 
def print_grade():
#items={'\xce\xef\xc0\xed': 5, ' \xca\xfd\xd1\xa7': 3, '\xd3\xef\xce\xc4': 2, '\xd3\xa2\xd3\xef': 4, '\xbb\xaf\xd1\xa7': 6}
    items={'物理': 5, '数学': 3, '语文': 2, '英语': 4, '化学': 6}
#创建一个字典，使用户能够查找相应的科目
    bubbling(items[item])#按照相应的科目进行冒泡
    for i in range(0,len(grades)): #打印相应的成绩
        print i+1,
        print grades[i][0],
        print grades[i][1],
        print grades[i][items[item]]
    print'******'
#################################################################
def print_output():
        choice(7)
        ranking =1
        for grade in grades:
            grade.append(ranking)
            ranking+=1
        bubbling(0)#对第一项进行冒泡排序，然后执行二分查找
        start=0
        end=len(grades)-1
        while True:
            if grades[(start+end)/2][0]>studentnumber:
                 start=((start+end)/2)+1    
              #如果中间的学号大于要查找的学号，即将中间值加上一赋给start  
            elif grades[(start+end)/2][0]<studentnumber:
                end=((start+end)/2)-1 #如果中间的学号小于要查找的学号，即将中间值减去一赋给end
            else:
                for j in  grades[(start+end)/2]:#如果中间的学号与我们要找的学号相同，打印它
                        print j,     
                print 
                break
        print'******'
########################################################################     
#create a list to record the data
grades=[]
while  True:# read the data line by line
    user_input=raw_input()
    grade=[]
    if user_input=='======':
        break
    for i in user_input.split(','):#将字符串分割成列表
        if len(i)==0:
            continue
        if i.isdigit():
            grade.append(int(i))#将除了名字以外的元素加入成绩列表
        else:
            grade.append(i)#将名字加入列表
    total=sum(grade[2:])#计算总成绩
    average=total/5.0#计算平均成绩
    grade.append(total)#将总成绩加入列表
    grade.append(average)#将平均成绩加入列表
    grades.append(grade)#将成绩列表加入总的列表
    
##################################################
choice(7)  # rank the list according to the total grades
for i in range(0,len(grades)):#打印出按照总成绩排名的结果
    print i+1,
    for j in  grades[i]:
            print j,
    print  
print '******' 
##########################
while True:
    item=(raw_input())#读取用户输入的科目
    if item=='======':
        break
    else:
        print_grade()
        
while True:
      studentnumber=raw_input()#读取用户输入的学号
      if studentnumber=='======':
          break
      else:
          studentnumber = int(studentnumber)
          print_output()
          

      


 


 


    
    
    
    
 

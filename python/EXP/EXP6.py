# -*- coding:utf-8 -*-
M = 6  # the size of list scores

class Stu:
    def __init__(self, num, name, scores):
        self.num = num  # the student number
        self.name = name  # the name
        self.scores = [int(score) for score in scores]  # the scores of the 5 subjects and the sum of them
        self.scores = [sum(self.scores)] + self.scores  # the total sum of the scores
        self.rank = 0
    
def cmp(stu1, stu2, j):
# Comparing by j score
# If stu1 has higher scores than stu2: return True
    if stu1.scores[j] != stu2.scores[j]:
        return stu1.scores[j] > stu2.scores[j]
    for i in range(M):
        if stu1.scores[i] != stu2.scores[i]:
            return stu1.scores[i] > stu2.scores[i]
    return True

stu = list()
n = 0  # the nubmer of students
sub_id = {"语文":1, "数学":2, "英语":3,  "物理":4, "化学":5}

#-----------------------------------------------------------------------#

def get_scores():
# Input the students and their scores
    global n
    while True:
        line = raw_input()
        if line == "======":
            break
        n += 1
        line = line.split(',')
        stu.append(Stu(line[0], line[1], line[2:2+M-1]))

def sort_by_tot():
# Sort the students by total scores    
# Insertion Sort
    for i in range(1,n):
        tmp = stu[i]
        j = i-1
        while j >= 0 and cmp(tmp, stu[j], 0):
            stu[j+1] = stu[j]
            j -= 1
        stu[j+1] = tmp

def sort_by_sub(j):
# Sort by the score of some subjectwhile True:
# Bubble Sort
    for i in range(n):
        for j in range(1,n-i):
            if not cmp(stu[j-1], stu[j], sub_id[line]):
                tmp = stu[j-1]
                stu[j-1] = stu[j]
                stu[j] = tmp

def search(num):
# Search the student with the id num
    l = 0
    r = n-1
    while l < r:
        m = (l + r + 1) / 2
        if stu[m].num == num:
            return m
        elif stu[m].num < num:
            l = m+1
        else:
            r = m - 1
    return l
#-----------------------------------------------------------------------#

# Sub Task 1
get_scores()
sort_by_tot()
for i in range(n):
    tmp = stu[i]
    print i+1, tmp.num, tmp.name, ' '.join([str(score) for score in tmp.scores[1:M]]), tmp.scores[0], float(tmp.scores[0])/(M-1)
    stu[i].rank = i+1

print "******"

# Sub Task 2
while True:
    line = raw_input()
    if line == "======":
        break
    sort_by_sub(sub_id[line])
    for i in range(n):
        print i+1, stu[i].num, stu[i].name, stu[i].scores[sub_id[line]]

print "******"

# Sub Task 3
stu = sorted(stu, key = lambda x: x.num)
while True:
    line = raw_input()
    if line == "======":
        break
    tmp = stu[search(line)]
    print tmp.num, tmp.name, ' '.join([str(score) for score in tmp.scores[1:M]]), tmp.scores[0], float(tmp.scores[0])/(M-1), tmp.rank

print "******"

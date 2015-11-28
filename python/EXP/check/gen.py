import random
import sys
for i in range(100):
    n=random.randint(1,100)
    for j in xrange(n):
        l = random.randint(1,5)
        s=''
        for j in xrange(l):
            s+=chr(random.randint(0,25)+ord('a'))
        print s,
    print
for i in range(1000000):
    op=random.randint(0,1)
    if op==0:
        print "AND:",
    else:
        print "AND:",
    for j in xrange(random.randint(1,3)):
        s=''
        for k in xrange(random.randint(1,3)):
            s+=chr(random.randint(0,25)+ord('a'))
        print s,
    print
print
print

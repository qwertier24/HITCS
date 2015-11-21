import sys
import os

def CF(C):
    return C*1.8+32

def FC(F):
    return (F-32)/1.8
op=raw_input()
try:
    src=input()
except:
    print "Error"
    quit()
if (op!='1' and op!='2'):
    print "Error"
else:
    if op=='1': 
        dest=FC(src)
        if(dest<-273.15):
            print "Error"
        else:
            print "%.2f"%(dest)
    else:       
        dest=CF(src)
        if(src<-273.15):
            print "Error"
        else:
            print "%.2f"%(dest)

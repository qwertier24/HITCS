import math
import time

#-------------------Subtask 1-----------------------#

def Subtask1(N):
    c3=N/3
    c5=N/5
    c15=N/15
    print (1+c3)*c3/2*3+(1+c5)*c5/2*5-(1+c15)*c15/2*15 #including excluding principle

#-------------------Subtask 2-----------------------#

def Subtask2(N,primeTable,isPrime):
    ans=0
    isPrime[1]=False
    for i in xrange(2,N):
        if isPrime[i]:
            ans+=i
            primeTable.append(i)
        for j in primeTable:
            if i*j>=N:
                break
            isPrime[i*j]=False
            if i%j==0:
                break
    print ans

#-------------------Subtask 3-----------------------#

def Subtask3():
    def isLeapYear(y): #check if y is a leap year
        if y%400==0 or (y%4==0 and y%100!=0):
            return True
        else:
            return False

    '''
    Jan..Dec correspond to 0..11
    Monday..Sunday correspond to 0..7
    '''
    monthDays=[31,0,31,30,31,30,31,31,30,31,30,31]
    cur=0 #the first day in the current month
    ans=0 
    for y in xrange(1900,2001):
        for m in range(12):
            if cur==6 and y>1900: #check if y is in [1901,2000]
                ans+=1
            if m==1:
                if isLeapYear(y):
                    cur+=29
                else:
                    cur+=28
            else:
                cur+=monthDays[m]
            cur%=7
    print ans

#-------------------Subtask 4-----------------------#

def Subtask4(N,isPrime):
    p10=[1,10,100,1000,10000,100000,1000000,10000000] #p10[i] stores 10**i
    def digCount(n): #Count the number of digits of n
        ret=0
        while n>0:
            n/=10
            ret+=1
        return ret

    def checkLoopPrime(isPrime,n): #Check if n is a loop-prime
        m=digCount(n)
        for i in xrange(m):
            if isPrime[n/p10[i]+(n%p10[i])*p10[m-i]]==False:
                return False
        return True

    ans=0
    for i in xrange(2,N):
        if isPrime[i] and checkLoopPrime(isPrime,i):
            ans+=1
    print ans


def main():
    primeTable=[]
    isPrime=[True for i in xrange(2000000)]
    Subtask1(999)
    Subtask2(2000000,primeTable,isPrime)
    Subtask3()
    Subtask4(1000000,isPrime)

t1=time.clock()
main()
t2=time.clock()


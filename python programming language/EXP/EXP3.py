def checkFormat(blocks):
    if len(blocks) != 4: #check if there are 4 blocks seperated by '-'
        return False;
    for i in xrange(4): #check if the number of characters of each block is optimal
        if len(blocks[i]) == 0:
            return False
    if len(blocks[3])!=1: #check if the number of the characters of the last part is 1
        return False
    for i in xrange(3): #check if the first 3 blocks contains only numbers
        for j in blocks[i]:
            if j<'0' or j>'9':
                return False
    if (blocks[3][0]<'0' or blocks[3][0]>'9') and (blocks[3][0]!='x' and blocks[3][0]!='X'): #check if the last blocks contains X/x
        return False
    return True

def getDigitValue(c): #return the value that c corresponds
    if c=='X' or c=='x':
        return 10
    else:
        return ord(c)-ord('0')

def checkDigits(blocks):
    sum=0 #the total sum
    curMul=10 #the number which the current digit will be multiplied by
    for i in xrange(4):
        for j in blocks[i]:
            sum+=curMul*getDigitValue(j)
            curMul-=1
    if sum%11==0:
        return True
    else:
        return False

import sys
#sys.stdin=open("in.txt","r")
while True:
    isbn=raw_input()
    if isbn=='$$$':
        break
    blocks=isbn.split('-')
    if len(isbn)!=13 or checkFormat(blocks)==False: #check the format
        print "Invalid ISBN Format"
    elif checkDigits(blocks)==False: #check the digits of isbn
        print "Invalid ISBN"
    else:
        print "Valid ISBN"
        

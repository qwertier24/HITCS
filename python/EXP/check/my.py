# -*- coding: utf-8 -*-
"""
Created on Sat Nov 14 13:14:19 2015

@author:zhangning
"""
"""
hello zhangning
zhang ning 
zhangning
and ning


"""
#############################################################
# read the user's input and creat a list to record them
text=[]
index_dict={}    #the dictionary is the index dictionary
for time in range (1,101):
    #read the user's 100 lines input and record them 
    inp=raw_input()  
    text.append(inp)
    

theline=1#recordthe number of the line
for line in text: # read the line by line
    words=line.split(' ')# make the string into a list
    for word in words:
        if word in index_dict:
            index_dict[word].add(theline)#put the number of the line into the dictionary
        else:
            
            
             index_dict[word]=set()#create a setting 
             index_dict[word].add(theline)
    theline+=1#update the number of the line
    

################################################
keys=set()
# these operation is to make the words order 
for key in index_dict:
    keys.add(key)

keys=sorted(keys) # make the keys order and make the keys into a list
    

for key in keys:
     
    # def numbers to get the  output in a right form
    numbers=''
    for number in sorted(index_dict[key]):
        
       
       numbers=numbers+str(number)+', '
      #print the output
    print key+": "+numbers.strip(', ')




########################################################


#define a function to carry out the  and operation

def print_output2(line):
    # creat a list include all the lines for the next operations
    output={i for i in range (1,101)}
 
    words=line.split(' ')
   
    for word in words:

        if word in index_dict:
            #the operation is to take the  set
            output = output & index_dict[word]
           # decide whether the output is a null set
            if len(output)==0:
                print None
                break
        else:
            print None
            break
                

    else:
        outpu=''
        
        for i in sorted(output):
            
            outpu=outpu+str(i)+', '
            
        print outpu.strip(', ')
######################################################################        


#define a function to carry out  the or operation 


def print_output1(line):
    output=set()

 
    words=line.split(' ')
    for word in words:
        if word in index_dict:
            
            

            #the operation is to take the or operation
            output = output | index_dict[word]
                
    
    else:
        if len(output)==0:
            print None
        #print the output 
        else:
            global outpu
            outpu=''
        
            for i in sorted(output):
            
                 outpu=outpu+str(i)+', '
            
            print outpu.strip(', ')
        
                
        
        
#####################################################       
        
        

while True:
    
    #read the user input and record the number
    user_input=raw_input()
    # decide whether stop the loop
    if len(user_input)==0:
        break



    else:
        if user_input.startswith('OR: '):
        # carry out the or operation
            print_output1(user_input.strip('OR: '))
        else:
            
         # carry out the and operation   
            print_output2(user_input.strip('AND: '))





############################################################






       
    


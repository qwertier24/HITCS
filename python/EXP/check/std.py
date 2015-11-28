AND=0
OR=1
PHI=set() #empty set
Dict={} #Dict[str] is the set of the rows where str appears
Words=[] #words that have ever appeared

def print_set(st): #print a set of numbers by non-descending order
    lst=sorted(list(st)) #set -> list
    for i in xrange(len(lst)): #numbers -> strings
        lst[i]=str(lst[i])
    print ', '.join(lst)
    
def get_index():
    global Dict
    global Words
    for i in range(100):
        sentence=raw_input()
        for word in sentence.split():
            if word not in Dict: #check if word is in Dict or Dict[word] must be initialized
                Dict[word]=set()
            Dict[word].add(i+1) 
            Words.append(word)

def print_index():
    global Words
    Words=sorted(Words)
    for i in xrange(len(Words)):
        if i==0 or (i>0 and Words[i]!=Words[i-1]):
            print Words[i]+':',
            print_set(Dict[Words[i]])

def get_answer(keywords,opt):
    global Dict
    ans = set() #initalize the ans which is the set for the query
    if keywords[0] in Dict:
        ans=Dict[keywords[0]]
    else:
        ans=PHI
    for key in keywords:
        if key in Dict:
            if opt == AND:
                ans = ans & Dict[key]
            else:
                ans = ans | Dict[key]
        else:
            if opt == AND:
                ans = ans & PHI
            else:
                ans = ans | PHI
    return ans

get_index()
print_index()
while True:
    query = raw_input()
    if query == '': #end of input
        break
    if query[0]=='O': #OR Query
        opt=OR
        query=query[3:] 
    elif query[0]=='A': #AND Query
        opt=AND
        query=query[4:]
    else:
        opt=AND #another type of AND query
    keywords = query.split() #the keywords of the query
    ans = get_answer(keywords,opt)
    if len(ans) == 0: #PHI
        print "None"
    else:
        print_set(ans)

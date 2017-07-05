AND = 0
OR = 1
Dict = {}  # Dict[str] is the set of the rows where str appears

def print_set(st):  # print a set of numbers by non-descending order
    lst=sorted(list(st))  # set -> list
    for i in xrange(len(lst)):  # numbers -> strings
        lst[i] = str(lst[i])
    print ', '.join(lst)
    
def get_index():
    for i in range(100):
        sentence=raw_input()
        for word in sentence.split():
            if word not in Dict:  # check if word is in Dict or Dict[word] must be initialized
                Dict[word] = set()
            Dict[word].add(i+1) 

def print_index():
    words = sorted(Dict.iteritems(),key = lambda w:w[0])  # sort the Dict by the key
    for word in words:
        print word[0]+':',
        print_set(Dict[word[0]])

def get_answer(keywords,opt):
    #initialize the ans which is the set for the query
    if keywords[0] in Dict: 
        ans = Dict[keywords[0]]
    else:
        ans = set()
    #find the set of each keyword
    for key in keywords:
        if key in Dict:
            if opt == AND:
                ans = ans & Dict[key]
            else:
                ans = ans | Dict[key]
        else:
            if opt == AND:
                ans = set()  # make ans empty
            else:
                pass  # ans | empty set = ans
    return ans

get_index()
print_index()
while True:
    query = raw_input()
    if query == '':  # end of input
        break
    if query[0] == 'O':  # OR Query
        opt = OR
        query = query[3:] 
    elif query[0] == 'A':  # AND Query
        opt = AND
        query = query[4:]
    else:
        opt = AND  # another type of AND query
    keywords = query.split()  # the keywords of the query
    ans = get_answer(keywords,opt)
    if len(ans) == 0:  # empty set
        print "None"
    else:
        print_set(ans)

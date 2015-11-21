import sys
VOWEL=['a','e','i','o','u'] 

def pigify(word):
    word=word.lower()
    if word[0] in VOWEL: #case 1
        return word+"hay"
    if word[0] == 'q' and len(word) > 1 and word[1] == 'u': #case 2
        return word[2:]+"quay"
    for i in xrange(len(word)): #case 3
        if word[i] in VOWEL or (i > 0 and word[i] == 'y'): 
            return word[i:]+word[:i]+"ay"
    return word+"ay" #All characters are consonants

#sentence=raw_input()
#sys.stdout=open("ans.txt","w")
#words=sentence.split(' ')
for i in range(26**3):
    if i!=11336:continue
    word=chr(i/26/26+ord('a'))+chr((i/26)%26+ord('a'))+chr(i%26+ord('a'));
    print word
    print pigify(word)

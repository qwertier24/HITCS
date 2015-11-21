import re
s = raw_input().lower()
t = re.sub(r"\b([aeiou]\w*)","\g<1>hay",s)
print re.sub(r"\b(qu|[^aeiou\W][^aeiouy\W]*)(\w*)",r"\g<2>\g<1>ay",t)

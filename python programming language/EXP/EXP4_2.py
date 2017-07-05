import re
print re.sub(r"\b(qu|[^aeiou\W][^aeiouy\W]*)(\w*)",r"\g<2>\g<1>ay",re.sub(r"\b([aeiou]\w*)","\g<1>hay",raw_input().lower()))

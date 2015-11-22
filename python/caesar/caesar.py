#-*- coding: utf-8 -*-
from  Tkinter import *

#-----------------------------IO-----------------------------------#
def get_input():
    # return the text of the txtInput
    return txtInput.get('0.0',END)
def set_output(string):
    # set the text of the txtOutput
    txtOutput.delete('0.0',END)
    txtOutput.insert('0.0',string)
def add_output(string):
    # add string to the end of the txtOutput
    txtOutput.insert(END,string)

#--------------------------check format---------------------------#
def check_input(str_input):
    # check if the input consists of only ascci character
    if len(str_input) == 0:
        return False
    try:
        str_input.decode('utf-8')
        print str_input.decode('utf-8')
    except:
        return False
    return len(str_input.decode('utf-8')) == len(str_input)
def check_key(str_key):
    # check if the key is a integer
    try:
        int(str_key)
    except:
        return False
    return True
def check_k(str_k):
    #check if the k is optimal
    try:
        int(str_k)
    except:
        return False
    if int(str_k) <= 0:
        return False
    return True

#---------------------------string shifting-------------------------#
def shifted(str_in,dis):
    str_out = str()
    for i in xrange(len(str_in)):
        if str_in[i].isalpha():
            str_out += chr((ord(str_in[i]) - ord('A') + dis % 26 + 26) % 26 + ord('A'))
        else:
            str_out += str_in[i]
    return str_out

#------------------------------encode--------------------------------#
def encode(cipher,key):
    # get the cipher and key then return the plain
    return shifted(cipher.upper(), key)
def in_encode_out():
    # get the cipher and key from the input and decode them then output the plain
    cipher = get_input()
    key = etrKey.get()
    if not check_input(cipher):
        set_output("输入密文不合法")
    elif not check_key(key):
        set_output("输入密钥不合法")
    else:
        set_output(encode(cipher, int(key)))

#------------------------------decode--------------------------------#
def decode(plain, key):
    # get the plain and key then return the cipher
    return shifted(plain.upper(), -key)
def in_decode_out():
    # get the plain and key from the input and encode them then output the cipher
    plain = get_input()
    key = etrKey.get()
    if not check_input(plain):
        set_output("输入明文不合法")
    elif not check_key(key):
        set_output("输入密钥不合法")
    else:
        set_output(decode(plain, int(key)))
#-----------------------------crack----------------------------__#
freq=[8.167, 1.492, 2.782, 4.253, 12.702, 2.228, 2.015, 6.094, 6.966, 0.153, 0.772, 4.025, 2.406, 6.749, 7.507, 1.929, 0.095, 5.987, 6.327, 9.056, 2.758, 0.978, 2.361, 0.150, 1.974, 0.074]

def crack(cipher, k):
    '''
    For a ciphe C, define shifted(C, i) as C_i which is equivalent to the string that C shifts to by i steps.
    Also, define function f(i) = sum{(frequency[j] - ordinary_frequency[j]) ^ 2 | 0<=j<26} as the evaluation function of C_i, which holds the equation f(x)>f(y) for each pair of (x,y) that C_x has more chances than C_y to be the plain text.
    '''
    cipher = cipher.upper()
    f = [0.0 for i in range(26)]
    for i in range(26):
        plain = shifted(cipher, i)
        cnt = [plain.count(chr(j + ord('A'))) for j in range(26)]
        print cnt
        tot = sum(cnt)
        for j in range(26):
            f[i] += (float(cnt[j])/float(tot)*100 - freq[j])**2
    plain_k=''
    c = 1
    for i in sorted(range(26), key = lambda x: f[x])[:k]:
        plain_k += u"明文%d：\n"%c + shifted(cipher, i) + '\n'
        c += 1
    return plain_k

def in_crack_out():
    # get the cipher and crack it then output the plain
    cipher = get_input()
    k = etrKey.get()
    if not check_input(cipher):
        set_output("输入密文不合法")
        return
    elif not check_k(k):
        set_output("输入的破解可选明文条数不合法")
        return
    set_output("")
    if int(k) > 26:
        set_output("输入的k大于26,将为您输出前26种明文\n")
    add_output(crack(cipher,int(k)))

#init the window and the frame
window=Tk()
window.title("凯撒密码破解器")
frame = Frame(window)
frame.pack()

#the input text box and the scroll bar
srlInput = Scrollbar(frame)
txtInput = Text(frame, height=20, width=20)
srlInput.config(command = txtInput.yview)
txtInput.config(yscrollcommand = srlInput.set)
txtInput.pack(side = "left")
srlInput.pack(side = "left", fill='y')
txtInput.insert(INSERT,"请在此输入待处理的文本")

# the buttons and the entry
frmMid = Frame(frame)
frmMid.pack(side = "left", anchor="center")
Label(frmMid, text="请在下方输入密钥或破解可选明文条数").pack(expand = "yes", side = "top")
etrKey = Entry(frmMid)
etrKey.pack(side = "top", expand = "yes")
#etrKey.insert(0, "请在此输入密钥或破解可选明文条数")
btnDecode = Button(frmMid, text = "加密>>", command = in_encode_out)
btnDecode.pack(side = "top", expand = "yes")
btnEncode = Button(frmMid, text = "解密>>", command = in_decode_out)
btnEncode.pack(side = "top", expand = "yes")
btnCrack = Button(frmMid, text = "破解>>", command = in_crack_out)
btnCrack.pack(side = "top", expand = "yes")

#the input text box and the scroll bar
srlOutput = Scrollbar(frame)
txtOutput = Text(frame, height=20, width=20)
srlOutput.config(command = txtOutput.yview)
txtOutput.config(yscrollcommand = srlOutput.set)
txtOutput.pack(side = "left")
srlOutput.pack(side = "left", fill='y')

#begin
window.mainloop()


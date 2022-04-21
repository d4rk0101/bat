import hashlib, sys, os

print("\033[0;34m\n   ----------\033[3;35m BruteForce Attack Hash md5\033[0;34m ----------\n")

preg = int(input("\033[3;35m01 passwordlist default (rockyou)\n02 passwordlist personalized\n\nChoose > "))

def x():
    hashpass = str(input("\033[3;31m\nEnter hash: "))
    passwordlist = open("rockyou_1.txt",'r')
    print("\n\033[0;34m      ----------\033[3;35m Starting Cracking... \033[0;34m----------\n")
    for p in passwordlist.readlines():
        n = p.strip("\n").encode('utf-8')
        n = hashlib.md5(n).hexdigest()
        if n == hashpass:
            print("password: {}hash: {}".format(p,n))
            
def y():
    hashpass = str(input("\033[3;31m\nEnter hash: "))
    passw = str(input("Enter Passwordlist: "))
    passwordlist = open(passw,"r")
    print("\n\033[0;34m      ----------\033[3;35m Starting Cracking... \033[0;34m----------\n")
    for p in passwordlist.readlines():
        n = p.strip("\n").encode('utf-8')
        n = hashlib.md5(n).hexdigest()
        if n == hashpass:
            print("\033[3;32mpassword: {}hash: {}".format(p,n))

if preg == 1:
    x()
elif preg == 2:
    y()
elif preg == '01':
    x()
elif preg == '02':
    y()
    
preg = str(input("\n\033[3;35mDo you want to return to the tool? y/n: "))
if preg == "y":
    os.system('cd $HOME')
    os.system('cd $HOME/bat')
    os.system('bash bat.sh')
elif preg == "n":
    print("bye...")
    os.system('exit')

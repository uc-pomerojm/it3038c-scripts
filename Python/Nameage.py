import time
start_time = time.time()
print('what is your name') 
myname = input()
print('Hello' + myname + 'that is my name. How old are you?')
myage = int(input())

while myname != 'AJ':
    if myname == 'your name':
        print("bad joke. Whats your real name")
        myname = input()
    else:
        print('please type your real name?')

while myname != 'your name':
    print('this is not "your name". Please type "your name"')

if myage < 13:
    print("you a minor")
    elif myage == 13:
       print("your a teen now")
    elif myage > 13 and myage < 30:
        print("youre young and dumb")
    elif myage >= 30 and myage <=65:
        print("im adulting")
    else:
        print("your still alive")

programage = int(time.time() - start_time)
print("%s? Thats funny. Im only %s seconds old." % (myage, programage))

#print("i wish i was" + str(int(myage) * 2) + "years old.")
print("I wish I was %s years old." % (myage *2))
time.sleep(3) 

print('Im tired i go sleep sleep now')
import random

number = random.radint(1,100)
Guess = int(raw_input('Enter a Number between 1 and 100'))

While number != "Guess"
print
if Guess < number:
print ('the number is to low')
Guess = int(raw_input('Enter a Number between 1 and 100'))
elif Guess > number:
print ('the number is to high')
Guess = int(raw_input('Enter a Number between 1 and 100'))
else 
print ('You Guessed it')

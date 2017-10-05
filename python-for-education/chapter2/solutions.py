# ************************************
# 2.12.1

print (5 + 3) * 2

# ************************************
# 2.12.2

# <type 'float'>

# ************************************
# 2.12.3

i = 2

while i <= 30:
    if i % 6 == 0:
        print '*',

    print i
    i = i + 2

# ************************************
# 2.12.4

string = 'I am a long string'
string = string[:-2]
print string

# ************************************
# 2.12.5

s = '012345'

s_a = s[:-2]
print s_a

s_b = s[2:]
print s_b

# ************************************
# 2.12.6

a = [1, 2, 3, 4, 5]

b = a[1 : 4] * 2;
print b

# ************************************
# 2.12.7

print 5 / 2 == 5.0 / 2
print 5 / 2 == 2.0 / 3
print 5.0 / 2 == 2.0 / 3

# ************************************
# 2.12.8

i = 0

while i < 4:
    j = 0
    while j < i + 1:
        print '+',
        j = j + 1
    print
    i = i + 1

# ************************************
# 2.12.9

string = raw_input('Enter string: ')
number = int(string[: -1])
character = string[-1 :]

print number
print character

# ************************************
# 2.12.10

number = input('Enter number: ')

# quick approach => print bin(number)

# ************************************
# 2.12.11

i = 1
cube = 1

while cube <= 2000:
    print cube
    i = i + 1
    cube = i ** 3

# ************************************
# 2.12.12

print '*',

i = 1

while i <= 5:
    print i,
    i = i + 1

print

i = 1

while i <= 5:
    print i,
    j = 1
    while j <= 5:
        print i * j,
        j = j + 1
    print
    i = i + 1

# ************************************
# 2.12.13

print 3.4 * 3.4 * 5 * (2.54 ** 3)

# ************************************
# 2.12.14

print "Percentage:", 4.0 / 3.0 * 3.14 / 8.0 * 100

# ************************************
# 2.12.15

radius = input('Enter radius: ')
print 'Area: ' 3.14 * radius ** 2

# ************************************
# 2.12.16

# TODO

# ************************************
# 2.12.17

while True:
    string = raw_input('Enter string: ')
    print 'Ocurrences of \'a\' letter: ', string.count('a')

# ************************************
# 2.12.18

first = input('Enter first number: ')
second = input('Enter second number: ')

print 'Dividend: ', first / second
print 'Remainder: ', first % second

# ************************************
# 2.12.19

first = input('Enter first number: ')
second = input('Enter second number: ')

if second != 0:
    print 'Dividend: ', first / second
    print 'Remainder: ', first % second
else:
    print 'Division by zero is illegal'

# ************************************
# 2.12.20

total = 0

proceed = True

while proceed:
    number = input('Enter number: ')
    total += number
    print 'Total:', total
    if number == 0:
        proceed = False

# ************************************
# 2.12.21

total = 0

proceed = True

while proceed:
    numberString = raw_input('Enter number: ')
    number = float(numberString)
    total += number
    print 'Total:', total
    if number == 0:
        proceed = False

# ************************************
# 2.12.22

celsius = input('Temperature in celsius: ')
fahrenheit = 9.0 / 5 * celsius + 32
print 'Temperature in fahrenheit: ', fahrenheit

# ************************************
# 2.12.23

fahrenheit = input('Temperature in fahrenheit: ')
celsius = 5.0 / 9 * fahrenheit - 32
print 'Temperature in celsius: ', celsius

# ************************************
# 2.12.24

for i in range(1, 20):
    print 'I will not talk in class'

# ************************************
# 2.12.25

a = 2 + 5j
b = 2 - 5j

print 'a * b = ', a * b

# ************************************
# 2.12.26

print '*',

i = 1

while i <= 12:
    print i,
    i = i + 1

print

i = 1

while i <= 12:
    print i,
    j = 1
    while j <= 12:
        print i * j,
        j = j + 1
    print
    i = i + 1

# ************************************
# 2.12.27

number = input('Enter number: ')

print '*',

for i in range(1, number + 1):
    print i,

print

for i in range(1, number + 1):
    print i,
    for j in range(1, number + 1):
        print i * j,
    print

# ************************************
# 2.12.28

for i in range (1, 11):
    print 2 ** i

# ************************************
# 2.12.29

a = [123, 12.4, 'haha', 3.4]

print '**** (a) ****'

for element in a:
    print element

print '**** (b) ****'

for element in a:
    if isinstance(element, float):
        print element

print '**** (c) ****'

a.insert(2, 'new_member')

for element in a:
    print element

print '**** (d) ****'

a.insert(1, 'more_members')

for element in a:
    print element

# ************************************
# 2.12.30

a = []

for i in range(0, 10):
    a.insert(i, i)

for element in a:
    print element

# ************************************
# 2.12.31

for i in range(1, 6):
    for j in range(1, 6):
        print i * j,
    print

# ************************************
# 2.12.32

# BORING!

# ************************************
# 2.12.33

# BORING!

# ************************************
# 2.12.34

a0 = 20
b0 = 6

[a, b] = [min(a0, b0), max(a0, b0)]

while a > 0:
    [a, b] = [b % a, a]

print 'GCD(a, b) = ', a

# ************************************
# 2.12.35

time = 1 # annual

principalInvestment = input('[P]rincipal investment: ')
numberOfCompositions = input('[N]umber of compositions: ')
rate = input('[R]ate: ')

annualCompoundInterest = principalInvestment * (1 + float(rate) / numberOfCompositions) ** (numberOfCompositions * time)

print
print '[A]nnual compound interest: ', annualCompoundInterest

# ************************************
# 2.22.1

table = open('table_8_x_8.txt', 'w')

for i in range(1, 9):
    for j in range(1, 9):
        table.write('%d ' %(i * j))
    table.write('\n')

table.close()

# ************************************
# 2.22.2

import pickle

arrayFile = open('array.txt', 'w')
array = [1, 2, 3, 5, 7, 11]
pickle.dump(array, arrayFile)
arrayFile.close()

arrayFile = open('array.txt', 'r')
array = pickle.load(arrayFile)
arrayFile.close()
print array

# ************************************
# 2.22.3

helloFile = open('hello_world.txt', 'w')
helloFile.write('hello world!')
helloFile.close()

# ************************************
# 2.22.4

openedFile = open('lines.txt', 'r')

line = openedFile.readline()

while line != '':
    print line
    line = openedFile.readline()

# ************************************
# 2.22.5

number = input('Enter number: ')

for i in range(1, number + 1):
    print '%d x %d = %2d' %(i, number, i * number)

# ************************************
# 2.22.6

array = range(1, 7)
array.insert(2, 10)
array.remove(4)
array.append(0)
array.sort()
print array

# ************************************
# 2.22.7

sequence = range(25, 4, -5)
sequence.remove(15)
sequence.sort()

for number in sequence:
    print number

# ************************************
# 2.22.8

s = 'mary had a little lamb'

print '(a)'

for i in range(len(s) - 1, -1, -1):
    print s[i],

print '\n(b)'

words = s.split(' ')
print words

# ************************************
# 2.22.9

words = ['I', 'am', 'in', 'pieces']

text = ' '.join(words)
print(text)

text = ''

for word in words:
    text += word + ' '

print(text)

# ************************************
# 2.22.10

import Tkinter

def hello():
    print('Hello')

root = Tkinter.Tk()

button0 = Tkinter.Button(root, text = 'Button 0', command = hello, bg = 'red')
button0.pack()

button1 = Tkinter.Button(root, text = 'Button 1', command = hello, bg = 'green')
button1.pack()

button2 = Tkinter.Button(root, text = 'Button 2', command = hello, bg = 'yellow')
button2.pack()

button3 = Tkinter.Button(root, text = 'Button 3', command = hello, bg = 'blue')
button3.pack()

button4 = Tkinter.Button(root, text = 'Button 4', command = hello, bg = 'orange')
button4.pack()

root.mainloop()

# ************************************
# 2.22.11

import Tkinter

phrases = []

def addPhrase():
    global phraseText
    phrase = phraseText.get('1.0', Tkinter.END)
    phraseText.delete('1.0', Tkinter.END)

    global phrases
    phrases.append(phrase)
    phrases.sort()

    global sortedPhrasesText
    sortedPhrasesText.delete('1.0', Tkinter.END)
    sortedPhrasesText.insert('1.0', ''.join(phrases))

root = Tkinter.Tk()

phraseText = Tkinter.Text(root, height = 1, width = 30)
phraseText.pack()

addPhraseButton = Tkinter.Button(root, text = 'Add phrase', command = addPhrase)
addPhraseButton.pack()

sortedPhrasesText = Tkinter.Text(root, height = 10, width = 30)
sortedPhrasesText.pack()

root.mainloop()

# ************************************
# 2.22.12

while True:
    sentence = raw_input('Enter sentence: ')

    if sentence == ''.join(reversed(sentence)):
        print('Is a palindrome')
    else:
        print('Is not a palindrome')

# ************************************
# 2.22.13

columnsFile = open('columns.txt', 'r')

line = columnsFile.readline()

while line != '':
    numbers = line.split(' ')

    firstColumnNumber = int(numbers[0])
    secondColumnNumber = int(numbers[1])

    print 'Sum: ', firstColumnNumber + secondColumnNumber

    line = columnsFile.readline()

# ************************************
# 2.22.14

def ceil(x, n):
    return (x + n - 1) / n;

text = raw_input('Enter string: ')
factor = ceil(9, len(text))
print text * factor	

# ************************************
# 2.22.15

# TO EASY

# ************************************
# 2.22.16

def hello1():
    print('Hello 1')

def hello2():
    print('Hello 2')

import Tkinter

root = Tkinter.Tk()

label1 = Tkinter.Label(root, text = 'Label 1')
label1.pack()

label2 = Tkinter.Label(root, text = 'Label 2')
label2.pack()

button1 = Tkinter.Button(root, text = 'Button 1', command = hello1)
button1.pack()

button2 = Tkinter.Button(root, text = 'Button 2', command = hello2)
button2.pack()

root.mainloop()

# ************************************
# 2.22.17

import Tkinter

root = Tkinter.Tk()

canvas = Tkinter.Canvas(root, width = 300, height = 200)
canvas.pack()

canvas.create_oval(10, 10, 100, 100)

root.mainloop()

# ************************************
# 2.22.18

def reverseString(string):
    reversedString = ''

    for i in range(len(string) - 1, -1, -1):
        reversedString += string[i]

    return reversedString

reversedString = reverseString('string')
print reversedString

# ************************************
# 2.22.19

def GCD(a, b):
    [a, b] = [min(a, b), max(a, b)]

    while a > 0:
        [a, b] = [b % a, a]

    return b

# ************************************
# 2.22.20

import math

start = 0
end = 2 * math.pi
interval = 0.1

actual = 0
numberOfTerms = 0

sumOfTerms = 0

while actual <= end:
    value = math.sin(actual)
    sumOfTerms += value
    numberOfTerms += 1
    actual += interval

    print value

print 'Mean: ', sumOfTerms / numberOfTerms

# ************************************
# 2.22.21

import random

numberOfProbes = 100
numberOfProbesBelow = 0

for i in range(numberOfProbes):
    number = random.random()

    if number < 0.5:
        numberOfProbesBelow += 1

print numberOfProbesBelow

# ************************************
# 2.22.22

import cmath

def quadraticEquationSolve(coefficients):
    delta = coefficients[1] ** 2 - 4 * coefficients[0] * coefficients[2]
    solution = [(-coefficients[1] - cmath.sqrt(delta)) / (2 * coefficients[2]), (-coefficients[1] + cmath.sqrt(delta)) / (2 * coefficients[2])]
    return solution

solution = quadraticEquationSolve([12, 6, 3])

print 'x0 = ', solution[0]
print 'x1 = ', solution[1]

# ************************************
# 2.22.23

# TO EASY

# ************************************
# 2.22.24

# TO EASY

# ************************************
# 2.22.25

# TO EASY

# ************************************
# 2.22.26

import turtle

def drawSquare(isFilled):
    if isFilled:
        pen.begin_fill()

    for k in range(4):
        pen.forward(size)
        pen.left(90)

    if isFilled:
        pen.end_fill()

size = 10
pen = turtle.Pen()

for i in range(8):
    for j in range(8):
        drawSquare((i + j) % 2 == 0)
        pen.forward(size)

    pen.backward(8 * size)
    pen.left(90)
    pen.forward(size)
    pen.right(90)

# ************************************
# 2.22.27

x = 1

while x <= 10:
    print x * 5
    x += 1

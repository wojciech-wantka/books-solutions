# ************************************
# 3.3.1

import numpy

array = numpy.array([5, 10, 15, 25])
anotherArray = array[0 : 3]
print anotherArray

# ************************************
# 3.3.2

import numpy

array = numpy.array([[1, 2], [3, 4], [5, 6]])

elementsSum = 0

for i in range(3):
    for j in range(2):
        elementsSum += array[i][j]

print elementsSum

# ************************************
# 3.3.3

import numpy

array = numpy.random.random([2, 3])

print array

# ************************************
# 3.3.4

import numpy

begin = 0.0
end = 10.0
interval = 0.1

numberOfElements = (end - begin) / interval + 1

array = numpy.linspace(begin, end, numberOfElements)

print array

# ************************************
# 3.3.5

import numpy

begin = 0.0
end = 10.0
numberOfElements = 100.0

interval = (end - begin) / numberOfElements

array = numpy.arange(begin, end, interval)

print array

# ************************************
# 3.3.6

import numpy

a = numpy.array([2, 3, 4, 5])
b = a.copy()

a[0] = 10
b[0] = 20

print 'a = ', a
print 'b = ', b

# ************************************
# 3.3.7

import numpy

array = numpy.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])

print array * 5

# ************************************
# 3.3.8

import numpy

array1 = numpy.array([[1, 2, 3], [4, 5, 6], [7, 8, 9]])
array2 = numpy.array([[3, 4, 5], [6, 7, 8], [9, 10, 11]])

print array1 + array2

# ************************************
# 3.3.9

# TO EASY

# ************************************
# 3.3.10

import numpy

systemArray = numpy.array([[4, -2, 1], [-2, 4, -2], [1, -2, 4]])
freeTerms = numpy.array([11, -16, 17])

solution = numpy.dot(numpy.linalg.inv(systemArray), freeTerms)

print solution

# ************************************
# 3.3.11

import numpy

angle = numpy.pi / 4

rotation = numpy.array([[numpy.cos(angle), -numpy.sin(angle)], [numpy.sin(angle), numpy.cos(angle)]])

vector = numpy.array([10, 10])

print numpy.dot(rotation, vector)

# ************************************
# 3.3.12

import numpy

def function(x):
	return x ** 2
	
vectorizedFunction = numpy.vectorize(function)

print vectorizedFunction([1, 2, 3])

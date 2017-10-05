# ************************************
# 4.11.1

import pylab

markers = ['+', 'x', 'o']
colours = ['r', 'g', 'b']

arguments = pylab.linspace(-pylab.pi, pylab.pi, 100)
values = pylab.sin(arguments)

pylab.plot(arguments, 1 * values, markers[0] + colours[0])
pylab.plot(arguments, 2 * values, markers[1] + colours[1])
pylab.plot(arguments, 3 * values, markers[2] + colours[2])

pylab.show()

# ************************************
# 4.11.2

import pylab

epsilon = 0.1

slice1 = pylab.linspace(-2 * pylab.pi, -3 * pylab.pi / 2 - epsilon, 1000)
slice2 = pylab.linspace(-3 * pylab.pi / 2 + epsilon, -pylab.pi / 2- epsilon, 1000)
slice3 = pylab.linspace(-pylab.pi / 2 + epsilon, pylab.pi / 2 - epsilon, 1000)
slice4 = pylab.linspace(pylab.pi / 2 + epsilon, 3 * pylab.pi / 2 - epsilon, 1000)
slice5 = pylab.linspace(3 * pylab.pi / 2 + epsilon, 2 * pylab.pi, 1000)

pylab.plot(slice1, pylab.tan(slice1))
pylab.plot(slice2, pylab.tan(slice2))
pylab.plot(slice3, pylab.tan(slice3))
pylab.plot(slice4, pylab.tan(slice4))
pylab.plot(slice5, pylab.tan(slice5))

pylab.show()

# ************************************
# 4.11.3

import pylab

angle = pylab.linspace(0, 2 * pylab.pi, 1000)
radius = pylab.ones(1000)

pylab.polar(angle, radius)

pylab.show()

# ************************************
# 4.11.4

# (a) lemniscate of bernoulli

from pylab import *

a = 1

angle = concatenate((linspace(-pi / 4, pi / 4, 1000), linspace(3 * pi / 4, 5 * pi / 4, 1000)))
radius = (a ** 2) * sqrt(cos(2 * angle))

polar(angle, radius)

show()

# (b) frequency curve

from pylab import *

x = linspace(-10, 10, 1000)
y = sqrt(2 * pi) * exp(-x ** 2 / 2)

plot(x, y)

show()

# (c) catenary

from pylab import *

a = 1.0

x = linspace(-1, 1, 1000)
y = a * cosh(x / a)

plot(x, y)

show()

# (d) rhodonea curve

from pylab import *

a = float(2)

angle = linspace(0, 2 * pi, 1000)
radius = sin(a * angle)

polar(angle, radius)

show()

# ************************************
# 4.11.5

# TODO

# ************************************
# 4.11.6

from pylab import *
from math import factorial

numberOfNodes = 1000

x = linspace(-1, 1, numberOfNodes)
y = zeros(numberOfNodes)

numberOfTerms = 10

for i in range(numberOfTerms):
	y += ((-1) ** i) / factorial(2 * i + 1) * (x ** (2 * i + 1))

plot(x, y)

show()

# ************************************
# 4.11.7

import pylab import *
from numpy import vectorize

numberOfTerms = 1

def mySin(x):
    x2 = float(x ** 2)

    term = x
    value = x

    i = 2
    factor = 1

    while i <= numberOfTerms:
        factor *= (2 * i - 2) * (2 * i - 1)
        term *= -x2 / factor
        value += term
        i += 1

    return value

vectorizedSin = vectorize(mySin)

x = linspace(-pi, pi, 1000)	
y = vectorizedSin(x)

plot(x, y)

show()

# ************************************
# 4.11.8

from pylab import *

x = linspace(0, 5, 20)
y = 5 * (x ** 2) + 3 * x + 2

plot(x, y, 'ro')
xlabel('x axis')
ylabel('y axis')
title('graph of quadratic function')

show()

# ************************************
# 4.11.9

from pylab import * 

def squareWave(x, numberOfTerms):
    y = zeros(len(x))

    for n in range(numberOfTerms): 
        term = sin((2 * n + 1) * x) / (2 * n + 1)
        y += term

    return y

numberOfTerms = 100 

x = linspace(0.0, 2 * pi, 100)	
y = squareWave(x, numberOfTerms)

plot(x, y)

show()

# ************************************
# 4.11.10

from pylab import *

data = open('data.dat', 'r')

line = data.readline()

x = []
y = []

while line != '':
    numbers = line.split(' ')

    x.append(float(numbers[0]))
    y.append(float(numbers[1]))

    line = data.readline()

data.close()

plot(x, y)

show()

# ************************************
# 4.11.11

import numpy
from mayavi import mlab

polar = numpy.linspace(0, numpy.pi, 100)
azimuth = numpy.linspace(0, 2 * numpy.pi, 100)

[phi, th] = numpy.meshgrid(polar, azimuth)

r = 5

x = r * numpy.sin(th) * numpy.cos(phi)
y = r * numpy.sin(th) * numpy.sin(phi)
z = r * numpy.cos(th)

mlab.mesh(x, y, z)
mlab.show()

# ************************************
# 4.11.12

from pylab import *

axis = linspace(-4 * pi, 4 * pi, 3)
[x, y]= meshgrid(axis, axis)

z = sin(x) + sin(y)

imshow(z)

show()

# ************************************
# 4.11.13

from pylab import *

x = linspace(-1, 1, 1000)
y = x ** 2

plot(x, y)
title('parabol function')
xlabel('x axis')
ylabel('y axis')

show()

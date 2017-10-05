# ************************************
# 6.9.1

def f(x):
    return 5 * x ** 2 + 3 * x + 5

def derivative(f, x, dx):
    h = dx / 2
    return (f(x + h) - f(x - h)) / dx

print derivative(f, 2.0, 0.01)
print derivative(f, -2.0, 0.01)

# ************************************
# 6.9.2

from pylab import *

def f(x):
    return sin(x ** 2)

def derivative(f, x, dx):
    h = dx / 2
    return (f(x + h) - f(x - h)) / dx

vectorizedDerivative = vectorize(derivative, excluded = ['f', 'dx'])

a = 0
b = 2 * pi
dx = 0.01

x = arange(a, b, dx)

y_correct = 2 * x * cos(x ** 2)
y_numerical = vectorizedDerivative(f, x, dx)

plot(x, y_correct)
plot(x, y_numerical)

show()

# ************************************
# 6.9.5

from pylab import *

X = 200
Y = 200
rlim = 1.0
ilim = 1.0
rscale = 2 * rlim / X
iscale = 2 * ilim / Y
MAXIT = 100
MAXABS = 2.0

c = 0.2 - 0.8j # The constant in equation z ** 2 + c

m = zeros([X, Y], dtype = uint8) # A two dimensional array

def numit(x, y): # number of iterations to diverge
    z = complex(x, y)

    for k in range(MAXIT):
        if abs(z) <= MAXABS:
            z = z ** 6 + c
        else:
            return k # diverged after k trials

    return MAXIT # did not diverge,

for x in range(X):
    for y in range(Y):
        re = rscale * x - rlim # complex number represented
        im = iscale * y - ilim # by the (x, y) coordinate

    m[x][y] = numit(re, im) # get the color for (x, y)

imshow(m) # Colored plot using the two dimensional matrix
show()

# ************************************
# 6.9.6

from numpy import *

A = array([[4, 1, -2], [2, -3, 3], [-6, -2, 1]])
b = array([0, 9, 0])

x = dot(linalg.inv(A), b)

print x







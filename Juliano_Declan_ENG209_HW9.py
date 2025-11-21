
# Juliano_Declan_ENG209_HW9.py
#11/20/2025
#ENG 209, HW 9, exercises:

# import all of math
from math import *
#***************************************question 1********************************
'''
Create a list from 10 to 1
Create a list from -3 to 81
Create a string 'abcabcabcabcabcabcabcabcabcabc'
Create a list with 10 elements of 'abc'
'''
x = list(range(1,11)[::-1])

x = list(3 * i for i in range(-1,28))

x = 'abc'*10

x = ['abc']*10

#***************************************question 2********************************
'''
perform the following computations
(i) sin 60°
(ii) sin 60
(iii)3+4\5
(iv) 7
6+5
(v) ln 1000
(vi) log10 1000
(vii) 23+7
(viii) 𝑒10
(ix) tan(𝜋
3)
sin(0.4𝜋) + tan2 60°
(x) 14+ 64^1/3/5.2×4.7 + 2.14^4−4.7/35−√4.5
'''

x = sin(radians(60))

x = sin(60)

x = (3+4)/5

x = 7/(6+5)

x = log(1000)

x = log10(1000)

x = pow(2,3+7)

x = exp(10)

x = tan(pi/3)/sin(0.4*pi)+tan(radians(60))**2

x = (14 + 64**(1/3))/(5.2*4.7) + (2.1**4-4.7)/(35-sqrt(4.5))

#***************************************question 7********************************
'''
Create a fibonacci sequence of 20 elements starting with 3 and 6
Then find the ratio of each successive terms
And print the results
'''

# starting points
a1 = 3
a2 = 6 

# number of elements
amount = 20

# initalize the fib list with the starting two numbers
fib = [a1,a2]   

# generate the fibonacci sequence from the second index to the amount
for i in range (2,amount):
    fib.append(fib[i-2]+fib[i-1])

# calculate the ratio of successive terms
ratio = [nan]   # first ratio is undefined
for i in range (1,len(fib)):
    ratio.append(fib[i]/fib[i-1])

# print the results
# print header
print(f'{"Index":>5}\t{"Fib number":>10}\t{"Ratio":>5}')
print('-'*29)

# print each fibonacci number and its ratio
for i in range(amount):
    print(f'{i:>5}\t{fib[i]:>10}\t{ratio[i]:>5.1f}')
    
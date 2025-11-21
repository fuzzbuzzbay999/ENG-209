from math import *
r = list(range(5,55,5))
def surf_area(r):
    area = 4*pi*(r**2)
    return area

def volume(r):
    vol = 4/3 * pi * r ** 3
    return vol
print(f'{"r":>5}\t{"area":>10}\t{"vol":>10}')
print('-'*38)
for i in r:
    print(f'{i:>5}\t{surf_area(i):>10.3f}\t{volume(i):>10.3f}')
    
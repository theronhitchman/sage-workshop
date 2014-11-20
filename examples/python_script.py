# find the sum of all numbers less than 1000 which are multiples of 3 and 5
listy = []
for x in xrange(0,1000):
    if x % 3 == 0 or x % 5 ==0:
        listy.append(x)

print sum(listy)

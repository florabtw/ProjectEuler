# Find the sum of the even valued terms of the Fibonacci sequence up to 4
# million

ans, prev, curr = 0, 1, 1
while (curr <= 4000000):
    if curr % 2 == 0:
        ans += curr
    curr, prev = curr + prev, curr

print ans

# attempting to one-line it
# Technically cheating because 32 is a magic number and can't be extracted
# from the given problem. Perhaps I will try again later.
print reduce(lambda x,n: [x[1], x[0] + x[1], x[2] + x[1] if x[1] % 2 == 0 else x[2]], range(32), [1,1,0])[2]

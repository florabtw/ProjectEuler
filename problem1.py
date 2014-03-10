# Compute the sum of all multiples of 3 or 5 below 1000

answer = 0
for i in range(1000):
    if i % 3 == 0 or i % 5 == 0:
        answer += i

print answer

# Alternate way using list comprehension

answer = sum([x for x in range(1000) if x % 5 == 0 or x % 3 == 0])

print answer

# Alternate way using sets
answer = sum(set(range(0, 1000, 3)) | set(range(0, 1000, 5)))

print answer

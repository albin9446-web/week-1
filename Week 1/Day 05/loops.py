# Day 5: Loops (for, while)

# 1. Basic For Loop
print("----- Task 1: Numbers 1 to 10 -----")
for i in range(1, 11):
    print(i)


# 2. String Iteration
print("\n----- Task 2: Name Characters -----")
name = "Albin"

for char in name:
    print(char)


# 3. While Loop Countdown
print("\n----- Task 3: Countdown Timer -----")
count = 10

while count >= 0:
    print(count)
    count -= 1


# 4. Sum of Numbers
print("\n----- Task 4: Sum from 1 to 50 -----")
total = 0

for num in range(1, 51):
    total += num

print("Sum =", total)


# 5. Break and Continue
print("\n----- Task 5A: Break at 7 -----")
for i in range(1, 11):
    if i == 7:
        print("Stopping at 7")
        break
    print(i)


print("\n----- Task 5B: Skip 5 -----")
for i in range(1, 11):
    if i == 5:
        continue
    print(i)


# 6. Nested Loops - 5x5 Star Square
print("\n----- Task 6: 5x5 Star Square -----")

for i in range(5):
    for j in range(5):
        print("*", end=" ")
    print()
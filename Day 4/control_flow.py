# Day 4: Control Flow

print("----- Task 1: Age Check -----")
age = int(input("Enter your age: "))

if age >= 18:
    print("You are an adult")
else:
    print("You are a minor")


print("\n----- Task 2: Compare Two Numbers -----")
num1 = int(input("Enter first number: "))
num2 = int(input("Enter second number: "))

if num1 > num2:
    print("First number is larger")
elif num1 < num2:
    print("Second number is larger")
else:
    print("Both numbers are equal")


print("\n----- Task 3: Grading System -----")
score = int(input("Enter your score (0-100): "))

if score >= 90:
    print("Grade: A")
elif score >= 80:
    print("Grade: B")
elif score >= 70:
    print("Grade: C")
else:
    print("Grade: F")


print("\n----- Task 4: Login System -----")
correct_username = "admin"
correct_password = "1234"

username = input("Enter username: ")
password = input("Enter password: ")

if username == correct_username:
    if password == correct_password:
        print("Login Successful")
    else:
        print("Wrong Password")
else:
    print("Wrong Username")


print("\n----- Task 5: Positive and Even Check -----")
number = int(input("Enter a number: "))

if number > 0 and number % 2 == 0:
    print("The number is positive and even")
else:
    print("The number is NOT both positive and even")


print("\n----- Task 6: Input Validation -----")
value = input("Enter a number: ")

if value.isdigit():
    num = int(value)
    if num > 0:
        print("Positive number")
    elif num == 0:
        print("Zero")
    else:
        print("Negative number")
else:
    print("Invalid input (not a number)")
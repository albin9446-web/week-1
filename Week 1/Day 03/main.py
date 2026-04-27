# Day 3: Variables and Data Types

# 1. Declare Variables
user_name = "Albin"
user_age = 20
user_height = 5.8

# 2. Experiment with Types
a = 10        # int
b = 5.5       # float
c = "Hello"   # string
d = True      # boolean

# 3. Check Types
print("Checking data types:")
print(type(a))
print(type(b))
print(type(c))
print(type(d))

# 4. Type Casting
num_str = "25"
num_int = int(num_str)

num = 50
num_to_str = str(num)

print("\nType Casting:")
print(num_int)
print(num_to_str)

# 5. String Formatting
print(f"\nMy name is {user_name}, I am {user_age} years old and my height is {user_height}")

# 6. Input Task
birth_year = input("\nEnter your birth year: ")
birth_year = int(birth_year)

current_year = 2026
age = current_year - birth_year

print(f"Your age is {age}")
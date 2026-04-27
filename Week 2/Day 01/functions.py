# Week 2 - Day 1: Functions and Scope

# 1. Basic Function
def greet_user(name):
    print(f"Hello, {name}! Welcome to Python Functions.")


greet_user("Albin")


# 2. Return Values
def add_numbers(a, b):
    return a + b


result = add_numbers(10, 20)
print("Sum:", result)


# 3. Default Arguments
def describe_pet(pet_name, animal_type="dog"):
    print(f"My pet is a {animal_type} named {pet_name}.")


describe_pet("Buddy")
describe_pet("Whiskers", "cat")


# 4. Using *args
def sum_all(*args):
    total = 0
    for num in args:
        total += num
    return total


print("Total Sum:", sum_all(10, 20, 30, 40))


# 5. Using **kwargs
def build_profile(first_name, last_name, **kwargs):
    profile = {
        "first_name": first_name,
        "last_name": last_name
    }
    profile.update(kwargs)
    print("Profile:", profile)


build_profile("Albin", "Benny", location="Salem", job="Student")


# 6. Scope Challenge
count = 0  # Global variable


def increase_count():
    global count
    count += 1
    print("Updated count:", count)


increase_count()

# Without using 'global', Python treats count inside the function
# as a local variable and gives an error if we try to modify it.
# Using 'global' tells Python to use the variable declared outside.
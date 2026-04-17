# Day 10: Inheritance & Polymorphism

# Parent Class
class User:
    def __init__(self, username, email):
        self.username = username
        self.email = email

    def login(self):
        print(f"User {self.username} logged in.")


# Child Class (Inheritance)
class Admin(User):
    def __init__(self, username, email, permissions):
        super().__init__(username, email)  # using parent constructor
        self.permissions = permissions

    # Method Overriding
    def login(self):
        print(f"Admin {self.username} logged in with full access.")

    # Specialized method
    def delete_user(self):
        print(f"Admin {self.username} deleted a user.")


# Create objects
user1 = User("albin_user", "user@gmail.com")
admin1 = Admin("albin_admin", "admin@gmail.com", "all")

print("----- Polymorphism Test -----")

# Polymorphism
users = [user1, admin1]

for u in users:
    u.login()   # different output based on object type

print()

# Specialized method test
admin1.delete_user()

# This will give error if uncommented
# user1.delete_user()
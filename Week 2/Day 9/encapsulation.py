class Student:
    school_name = "LeaLabs Academy"  # class variable

    def __init__(self, name, id_number):
        self.name = name                  # public
        self.__id_number = id_number      # private

    # Getter
    def get_id(self):
        return self.__id_number

    # Setter with validation
    def set_id(self, new_id):
        if len(str(new_id)) == 4:
            self.__id_number = new_id
            print("ID updated successfully")
        else:
            print("Invalid ID (must be 4 digits)")

    # Instance method
    def study(self, subject):
        print(f"{self.name} is studying {subject}")

    # Class method
    @classmethod
    def school_info(cls):
        print(f"School Name: {cls.school_name}")


# Create object
student1 = Student("Albin", 1234)

# Public attribute access
print("Student Name:", student1.name)

# ❌ Try accessing private (will fail)
# print(student1.__id_number)  # Uncomment to see error

# ✅ Access using getter
print("Student ID (using getter):", student1.get_id())

# Update using setter
student1.set_id(5678)
print("Updated ID:", student1.get_id())

# Try invalid ID
student1.set_id(99)

print()

# Instance method
student1.study("Python")

print()

# Class method
Student.school_info()
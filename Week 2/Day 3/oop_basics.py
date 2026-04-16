class Course:
    def __init__(self, name, price, seats):
        self.name = name
        self.price = price
        self.seats = seats

    def display_info(self):
        print(f"Course: {self.name} costs ₹{self.price}")

    def enroll_student(self):
        if self.seats > 0:
            self.seats -= 1
            print(f"1 student enrolled in {self.name}. Seats left: {self.seats}")
        else:
            print(f"{self.name} is already full.")

    def get_status(self):
        if self.seats > 0:
            return "ACTIVE"
        return "FULL"


# Creating course objects
course1 = Course("Full Stack Masterclass", 9999, 3)
course2 = Course("Generative AI & LLMs", 14999, 2)
course3 = Course("Advanced System Design", 19999, 1)

# Display info
course1.display_info()
course2.display_info()
course3.display_info()

print()

# Enroll students
course1.enroll_student()
course1.enroll_student()

course2.enroll_student()

course3.enroll_student()
course3.enroll_student()  # this will show full

print()

# Show status
print(f"{course1.name} status: {course1.get_status()}")
print(f"{course2.name} status: {course2.get_status()}")
print(f"{course3.name} status: {course3.get_status()}")
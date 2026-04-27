from django.db import models

# ✅ Custom Manager
class ActiveCourseManager(models.Manager):
    def get_queryset(self):
        return super().get_queryset().filter(status='ACTIVE')


class Course(models.Model):
    course_name = models.CharField(max_length=200)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    seats_filled = models.IntegerField(default=0)
    total_seats = models.IntegerField()
    status = models.CharField(max_length=20, default='DRAFT')

    # ✅ Manager
    objects = models.Manager()
    active_objects = ActiveCourseManager()

    def __str__(self):
        return self.course_name


# ✅ Many-to-One (ForeignKey)
class Lesson(models.Model):
    title = models.CharField(max_length=200)
    course = models.ForeignKey(
        Course,
        on_delete=models.CASCADE,
        related_name='lessons'
    )

    def __str__(self):
        return self.title


# ✅ Many-to-Many
class Student(models.Model):
    name = models.CharField(max_length=100)
    courses = models.ManyToManyField(Course)

    def __str__(self):
        return self.name


# ✅ One-to-One
class CourseDetail(models.Model):
    course = models.OneToOneField(
        Course,
        on_delete=models.CASCADE
    )
    syllabus = models.TextField()

    def __str__(self):
        return f"Details of {self.course.course_name}"
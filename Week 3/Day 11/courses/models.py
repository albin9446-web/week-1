from django.db import models

class Course(models.Model):
    course_name = models.CharField(max_length=200)
    price = models.DecimalField(max_digits=10, decimal_places=2)
    seats_filled = models.IntegerField(default=0)
    total_seats = models.IntegerField()
    status = models.CharField(max_length=20, default='DRAFT')

    def __str__(self):
        return self.course_name
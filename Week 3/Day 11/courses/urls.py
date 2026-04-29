from django.urls import path
from . import views

urlpatterns = [
    path('api/fbv/', views.course_list),
    path('api/cbv/', views.CourseList.as_view()),
    path('api/course/<int:id>/', views.CourseDetail.as_view()),
]
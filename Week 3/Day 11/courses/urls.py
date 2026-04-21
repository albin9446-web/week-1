from django.urls import path
from . import views

urlpatterns = [
    path('', views.home_view),
    path('course/<str:name>/', views.detail_view),
]
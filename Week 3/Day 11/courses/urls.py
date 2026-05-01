from django.urls import path, include
from rest_framework.routers import DefaultRouter
from .views import CourseListCreateView, CourseDetailView, CourseViewSet

# Router
router = DefaultRouter()
router.register(r'courses', CourseViewSet)

urlpatterns = [
    # GENERICS
    path('api/generic/', CourseListCreateView.as_view()),
    path('api/generic/<int:pk>/', CourseDetailView.as_view()),

    # VIEWSET ROUTER
    path('api/', include(router.urls)),
]
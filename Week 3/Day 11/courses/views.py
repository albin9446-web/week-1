from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status, generics, viewsets

from .models import Course
from .serializers import CourseSerializer


# =========================
# FUNCTION BASED VIEW (FBV)
# =========================
@api_view(['GET', 'POST'])
def course_list(request):

    if request.method == 'GET':
        courses = Course.objects.all()
        serializer = CourseSerializer(courses, many=True)
        return Response(serializer.data)

    elif request.method == 'POST':
        serializer = CourseSerializer(data=request.data)

        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


# =========================
# GENERIC VIEWS
# =========================
class CourseListCreateView(generics.ListCreateAPIView):
    queryset = Course.objects.all()
    serializer_class = CourseSerializer


class CourseDetailView(generics.RetrieveUpdateDestroyAPIView):
    queryset = Course.objects.all()
    serializer_class = CourseSerializer


# =========================
# VIEWSET (ALL IN ONE)
# =========================
class CourseViewSet(viewsets.ModelViewSet):
    queryset = Course.objects.all()
    serializer_class = CourseSerializer

    """
    Actions mapping:

    GET     → list
    POST    → create
    GET(id) → retrieve
    PUT     → update
    PATCH   → partial_update
    DELETE  → destroy
    """
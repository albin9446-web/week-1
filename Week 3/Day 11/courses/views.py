from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status
from rest_framework.views import APIView

from .models import Course
from .serializers import CourseSerializer


# =========================
# FUNCTION BASED VIEW (FBV)
# =========================
@api_view(['GET', 'POST'])
def course_list(request):

    # GET → return all courses
    if request.method == 'GET':
        courses = Course.objects.all()
        serializer = CourseSerializer(courses, many=True)
        return Response(serializer.data)

    # POST → create new course
    elif request.method == 'POST':
        serializer = CourseSerializer(data=request.data)

        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


# =========================
# CLASS BASED VIEW (CBV)
# =========================
class CourseList(APIView):

    def get(self, request):
        courses = Course.objects.all()
        serializer = CourseSerializer(courses, many=True)
        return Response(serializer.data)

    def post(self, request):
        serializer = CourseSerializer(data=request.data)

        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data, status=status.HTTP_201_CREATED)

        return Response(serializer.errors, status=status.HTTP_400_BAD_REQUEST)


# =========================
# DETAIL VIEW (GET, PUT, DELETE)
# =========================
class CourseDetail(APIView):

    def get_object(self, id):
        try:
            return Course.objects.get(id=id)
        except Course.DoesNotExist:
            return None

    def get(self, request, id):
        course = self.get_object(id)
        if course is None:
            return Response({"error": "Not found"}, status=404)

        serializer = CourseSerializer(course)
        return Response(serializer.data)

    def put(self, request, id):
        course = self.get_object(id)
        if course is None:
            return Response({"error": "Not found"}, status=404)

        serializer = CourseSerializer(course, data=request.data)

        if serializer.is_valid():
            serializer.save()
            return Response(serializer.data)

        return Response(serializer.errors, status=400)

    def delete(self, request, id):
        course = self.get_object(id)
        if course is None:
            return Response({"error": "Not found"}, status=404)

        course.delete()
        return Response(status=status.HTTP_204_NO_CONTENT)
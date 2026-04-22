from django.shortcuts import render

def home_view(request):
    context = {
        "title": "Klaw Courses",
        "user_name": "Albin",
        "courses": ["Python", "Django", "AI", "Web Development"]
    }
    return render(request, "courses/course_list.html", context)


def detail_view(request, name):
    return render(request, "courses/course_list.html", {
        "title": f"Course: {name}",
        "user_name": "Albin",
        "courses": [name]
    })
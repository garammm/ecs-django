from django.http import HttpResponse

def home(request):
    return HttpResponse("<h1>Green Version - ECS Blue/Green Test</h1>")

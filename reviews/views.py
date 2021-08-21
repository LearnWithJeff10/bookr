from django.shortcuts import render

def index(request):
    title = "Welcome to Bookr"
    return render(request, "base.html", {"title": title})
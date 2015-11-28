from django.shortcuts import render
from django.http import HttpResponse

def index(request):
    return HttpResponse("Hello, it's the first page I created'")



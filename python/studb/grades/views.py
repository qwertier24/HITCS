from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.template import RequestContext, loader

def index(request):
    return render(request, 'grades/index.html')
def redirect_to_index(request):
    return HttpResponseRedirect('/grades/index/')

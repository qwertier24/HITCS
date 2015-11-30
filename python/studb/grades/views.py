from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.template import RequestContext, loader
from models import Student

def index(request):
    return render(request, 'grades/index.html')

def redirect_to_index(request):
    return HttpResponseRedirect('/grades/index/')

def query_stu(request):
    try:
        num_name = request.GET['num_name']
        if num_name.isdigit():
            return render(request, 'grades/query.html', {"stus":Student.objects.filter(num=int(num_name))})
        else:
            return render(request, 'grades/query.html', {"stus":Student.objects.filter(name=num_name)})
    except:
        return render(request, 'grades/error.html');

def sort(stus, cmd):
    return sorted(stus, key=lambda x: x.scores[cmd]+x.scores, reverse=True)

sub=['tot','chi','mat','eng','phy','che']
def query_all(request):
    order = request.GET.get('order', 0)
    order = int(order)
    low = request.GET.get('low', 0)
    high = request.GET.get('high', 10000)
    if order == 0:
        stus = Student.objects.order_by('-tot').filter(tot__gte=low).filter(tot__lte=high)
    elif order == 1:
        stus = Student.objects.order_by('-chi').filter(chi__gte=low).filter(chi__lte=high)
    elif order == 2:
        stus = Student.objects.order_by('-mat').filter(mat__gte=low).filter(mat__lte=high)
    elif order == 3:
        stus = Student.objects.order_by('-eng').filter(eng__gte=low).filter(eng__lte=high)
    elif order == 4:
        stus = Student.objects.order_by('-phy').filter(phy__gte=low).filter(phy__lte=high)
    elif order == 5:
        stus = Student.objects.order_by('-che').filter(che__gte=low).filter(che__lte=high)
    return render(request, 'grades/query.html', {"stus":stus})

def modify0(request):
    try:
        num = int(request.GET['num'])
        if len(Student.objects.filter(num=num)) == 0:
            Student.objects.create(num=num)
        return render(request, 'grades/modify1.html',{'stu':Student.objects.get(num=num)})
    except:
        return render(request, 'grades/modify0.html')

def modify1(request):
    try:
        cmd = request.GET['cmd']
        num = int(request.GET['num'])
        if cmd == 'edit':
            name =request.GET['name']
            chi = int(request.GET['chi'])
            mat = int(request.GET['mat'])
            eng = int(request.GET['eng'])
            phy = int(request.GET['phy'])
            che = int(request.GET['che'])
            Student.objects.filter(num=num).update(name = name,
                                                chi = chi,
                                                mat = mat,
                                                eng = eng,
                                                phy = phy,
                                                che = che,
                                                tot = chi + mat + eng + phy + che)
            return render(request, 'grades/query.html', {"stus":Student.objects.filter(num=num)})
        else:
            Student.objects.filter(num=num).delete()
            return render(request, 'grades/success.html', {"str":"deletion"})
    except:
        return render(request, 'grades/error.html');


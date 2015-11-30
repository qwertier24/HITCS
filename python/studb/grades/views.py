# -*- coding: utf-8 -*-
from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.template import RequestContext, loader
from models import Student
import csv

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
        return render(request, 'grades/error.html', {"str":"学生信息输入错误，请重试"});

def query_all(request):
    order = request.GET.get('order', 0)
    order = int(order)
    low = request.GET.get('low', 0)
    high = request.GET.get('high', 10000)
    if low == '':
        low = 0
    if high == '':
        high = 10000
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
    if request.method=='POST':
        try:
            num = int(request.POST.get('num'))
            if len(Student.objects.filter(num=num)) == 0:
                Student.objects.create(num=num)
            return render(request, 'grades/modify1.html',{'stu':Student.objects.get(num=num)})
        except:
            return render(request, 'grades/error.html')
    else:
        return render(request, 'grades/modify0.html')

def modify1(request):
    try:
        cmd = request.REQUEST.get('cmd')
        num = int(request.POST.get('num'))
        if cmd == 'edit':
            name =request.POST.get('name')
            chi = int(request.POST.get('chi'))
            mat = int(request.POST.get('mat'))
            eng = int(request.POST.get('eng'))
            phy = int(request.POST.get('phy'))
            che = int(request.POST.get('che'))
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
            return render(request, 'grades/notify.html', {"str":"学生信息成功删除"})
    except:
        return render(request, 'grades/error.html', {"str":"学生信息错误，请重试"});

def upload(request):
    if request.method == "POST":
        try:
            csv = request.FILES['csv']
            if csv.size > 4096:
                return render(request, 'grades/error.html', {'str':'文件尺寸过大'})
            else:
                for line in csv:
                    line = line.strip('\r\n\xef\xbb\xbf')
                    words = line.split(',')
                    if len(words) == 0:
                        continue
                    if len(Student.objects.filter(num=int(words[0]))) == 0:
                        Student.objects.create(num=int(words[0]))
                    Student.objects.filter(num=int(words[0])).update(name=words[1],
                                                                     chi=int(words[2]),
                                                                     mat=int(words[3]),
                                                                     eng=int(words[4]),
                                                                     phy=int(words[5]),
                                                                     che=int(words[6]),
                                                                     tot=sum([int(i) for i in words[2:7]]))
                return render(request, 'grades/notify.html', {"str":"导入csv文件成功"})
        except:
            return render(request, 'grades/error.html', {'str':'您没有上传文件或文件格式错误，具体文件格式详见帮助'})
    else:
        return render(request, 'grades/upload.html')

def download(request):
    response = HttpResponse(content_type='text/csv;charset=utf-8')
    response['Content-Disposition'] = 'attachment; filename="scores.csv"'

    writer = csv.writer(response)
    writer.writerow(["\xef\xbb\xbf学号", "姓名", "语文成绩", "数学成绩", "英语成绩", "物理成绩", "化学成绩", "总分"])
    for stu in Student.objects.order_by("-tot"):
        writer.writerow([stu.num, stu.name.encode('utf-8'), stu.chi, stu.mat, stu.eng, stu.phy, stu.che, stu.tot])

    return response

def help(request):
    return render(request, 'grades/help.html')
    
def about(request):
    return render(request, 'grades/about.html')

def stat(request):
    return render(request, 'grades/stat.html')

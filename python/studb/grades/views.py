# -*- coding: utf-8 -*-
from django.shortcuts import render
from django.http import HttpResponse, HttpResponseRedirect
from django.template import RequestContext, loader
from models import Student
from django.db.models import Max,Sum,Avg
import csv

subjects = ['tot','chi','mat','eng','phy','che']
subjects_ch = ["总","语文","数学","英语","物理","化学"]

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
    order = int(request.GET.get('order', 0))
    low = request.GET.get('low', 0)
    high = request.GET.get('high', 10000)
    if low == '':
        low = 0
    if high == '':
        high = 10000
    stus = Student.objects.order_by('-'+subjects[order]).filter(**{subjects[order]+'__gte':low}).filter(**{subjects[order]+'__lte':high})
    return render(request, 'grades/query.html', {"stus":stus, "subid":order})

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
            paras = dict()
            paras['name'] = request.POST.get('name')
            paras['tot'] = 0
            for subject in subjects[1:]:
                para[subject] = request.POST.get(subject)
                paras['tot'] += para[subject]
            Student.objects.filter(num=num).update(**paras)
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
                    paras = dict()
                    for i in xrange(1,6):
                        paras[subjects[i]] = int(words[i+1])
                        paras['tot'] += paras[subjects[i]]
                    paras['name']=words[1]
                    Student.objects.filter(num=int(words[0])).update(**paras)
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
    order = int(request.GET.get('order',0))
    if order == '':
        order = 0
    cnt_A = 0
    cnt_B = 0
    cnt_C = 0
    cnt_D = 0
    max_score = 0
    if order == 0:
        max_score = 650
    elif order <= 3:
        max_score = 150
    else:
        max_score = 100
    cnt_A = Student.objects.filter(**{subjects[order]+'__gte':max_score/10*9}).count()
    cnt_B = Student.objects.filter(**{subjects[order]+'__gte':max_score/10*8}).filter(**{subjects[order]+'__lt':max_score/10*9}).count()
    cnt_C = Student.objects.filter(**{subjects[order]+'__gte':max_score/10*6}).filter(**{subjects[order]+'__lt':max_score/10*8}).count()
    cnt_D = Student.objects.filter(**{subjects[order]+'__lt':max_score/10*6}).count()
    top = Student.objects.aggregate(Max(subjects[order]))[subjects[order]+'__max']
    avg = Student.objects.aggregate(Avg(subjects[order]))[subjects[order]+'__avg']
    stun = Student.objects.all().count()
    mid = Student.objects.all().order_by(subjects[order]).values(subjects[order])[stun/2][subjects[order]]
    return render(request, 'grades/stat.html', {'cnt_A':cnt_A, 'cnt_B':cnt_B, 'cnt_C':cnt_C, 'cnt_D':cnt_D, 'sub':subjects_ch[order], 'top':top, 'avg':avg, 'mid':mid, 'stun':stun})

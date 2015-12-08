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
    return render(request, 'index.html')

def redirect_to_index(request):
    return HttpResponseRedirect('/index/')

def query_stu(request):
    '''
    Return a page contaning the scores of the students whose id or name is num_name.
    The number of the corresponding students may be large than 1 since two students can have the same name.
    '''
    try:
        num_name = request.GET['num_name']
        if num_name.isdigit():
            stus=Student.objects.filter(num=int(num_name))
        else:
            stus=Student.objects.filter(name=num_name)
        rank = list()
        for i in xrange(len(stus)):  # get the students' ranks
            rank.append(Student.objects.filter(tot__gt=stus[i].tot).count()+1)
        return render(request, 'query.html', {"table":[[stus[i],rank[i]] for i in xrange(stus.count())]})
    except:
        return render(request, 'error.html', {"str":"学生信息输入错误，请重试"});

def query_all(request):
    '''
    Return a page containing all the student's grades sorted by subjects[order].
    '''
    try:
        order = int(request.GET.get('order', 0))
        low = request.GET.get('low','0')
        high = request.GET.get('high','10000')
        low = int(low)
        high = int(high)
        stus = Student.objects.order_by(*(['-'+subjects[order]]+['-'+sub for sub in subjects])).filter(**{subjects[order]+'__gte':low}).filter(**{subjects[order]+'__lte':high})
        return render(request, 'query.html', {"table":[[stus[i],i+1] for i in xrange(stus.count())], "subid":order})
    except:
        return render(request, 'error.html', {"str":"输入信息错误,请重试"})

def modify0(request):
    '''
    Receive the id of the student whose infromation will be updated.
    Then return a page for the user to modify the student's information.
    '''
    if request.method=='POST':
        try:
            num = int(request.POST.get('num'))
            if len(Student.objects.filter(num=num)) == 0:
                Student.objects.create(num=num)
            return render(request, 'modify1.html',{'stu':Student.objects.get(num=num)})
        except:
            return render(request, 'error.html')
    else:
        return render(request, 'modify0.html')

def modify1(request):
    '''
    Receive the form containing a student's information
    and update the student's infromation in the database.
    '''
    try:
        cmd = request.POST.get('cmd')
        paras = dict()
        paras['num'] = int(request.POST.get('num'))
        if cmd == 'edit':  # edit the student's infromation
            paras['name'] = request.POST.get('name')
            paras['tot'] = 0
            
            for subject in subjects[1:]:
                paras[subject] = int(request.POST.get(subject))
                paras['tot'] += paras[subject]
                
            Student.objects.filter(num=paras['num']).update(**paras)
                
            return render(request, 'query.html', {"table":[[Student.objects.get(num=paras['num']), Student.objects.filter(tot__gt=paras['tot']).count()+1]]})
        else:  # delete the student from the database
            Student.objects.filter(num=paras['num']).delete()
            return render(request, 'notify.html', {"str":"学生信息成功删除"})
    except:
        return render(request, 'error.html', {"str":"学生信息错误，请重试"});

def upload(request):
    '''
    Upload a csv and store the students' imformation in the database.
    '''
    if request.method == "POST":  # form submitted
        try:
            csv = request.FILES['csv']
            if csv.size > 4096:
                return render(request, 'error.html', {'str':'文件尺寸过大'})
            else:
                for line in csv:
                    line = line.strip('\r\n\xef\xbb\xbf')  # delete the useless characters
                    words = line.split(',')
                    if len(words) == 0:
                        continue
                    if len(Student.objects.filter(num=int(words[0]))) == 0:
                        Student.objects.create(num=int(words[0]))
                    paras = dict()
                    paras['tot'] = 0  # total score
                    for i in xrange(1,6):
                        paras[subjects[i]] = int(words[i+1])  # scores of the subjects
                        paras['tot'] += paras[subjects[i]]
                    paras['name']=words[1]
                    Student.objects.filter(num=int(words[0])).update(**paras)
                return render(request, 'notify.html', {"str":"导入csv文件成功"})  # upload succeeded
        except:
            return render(request, 'error.html', {'str':'您没有上传文件或文件格式错误，具体文件格式详见帮助'})
    else:
        return render(request, 'upload.html')

def download(request):
    '''
    Return a file containing all the students' scores.
    '''
    response = HttpResponse(content_type='text/csv;charset=utf-8')
    response['Content-Disposition'] = 'attachment; filename="scores.csv"'

    writer = csv.writer(response)
    writer.writerow(["\xef\xbb\xbf学号", "姓名", "语文成绩", "数学成绩", "英语成绩", "物理成绩", "化学成绩", "总分"])
    for stu in Student.objects.order_by("-tot"):
        writer.writerow([stu.num, stu.name.encode('utf-8'), stu.chi, stu.mat, stu.eng, stu.phy, stu.che, stu.tot])

    return response

def help(request):
    return render(request, 'help.html')
    
def about(request):
    return render(request, 'about.html')

def stat(request):
    '''
    Return a page containing statistical information about the scores in subjects[order].
    '''
    order = int(request.GET.get('order',0))
    if order == '':
        order = 0
    cnt_A = 0  # the number of students whose score is more than mas_score*0.9
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

    top = Student.objects.aggregate(Max(subjects[order]))[subjects[order]+'__max']  # the highest score
    avg = Student.objects.aggregate(Avg(subjects[order]))[subjects[order]+'__avg']  # the average score
    stun = Student.objects.all().count()  # the total number of students
    mid = Student.objects.all().order_by(subjects[order]).values(subjects[order])[stun/2][subjects[order]]  # the median score

    return render(request, 'stat.html', {'cnt_A':cnt_A, 'cnt_B':cnt_B, 'cnt_C':cnt_C,\
                                                'cnt_D':cnt_D, 'sub':subjects_ch[order], 'top':top,\
                                                'avg':avg, 'mid':mid, 'stun':stun})

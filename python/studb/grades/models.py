from django.db import models

SBJ_N = 5
# Create your models here.
class Student(models.Model):
    num = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=10)
    tot = models.IntegerField(default=0)
    chi = models.IntegerField(default=0)
    mat = models.IntegerField(default=0)
    eng = models.IntegerField(default=0)
    phy = models.IntegerField(default=0)
    che = models.IntegerField(default=0)

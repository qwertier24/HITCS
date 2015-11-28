from django.db import models

SBJ_N = 5
# Create your models here.
class Student(models.Model):
    name = models.CharField(max_length=10)
    scores = [models.IntegerField() for i in range(SBJ_N+1)]
    rank = models.IntegerField()

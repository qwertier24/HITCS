from django.db import models
from django.core.exceptions import ValidationError

def validate_cme(value):
    '''
    Check if value is valid to be a grade of chinese, math or English
    '''
    if value<0 or value>150:
        raise ValidationError("123%d"%value,1)

def validate_pc(value):
    '''
    Check if value is valid to be a grade of chinese, math or English
    '''
    if value<0 or value>100:
        raise ValidationError("123")

class Student(models.Model):
    num = models.IntegerField(primary_key=True)
    name = models.CharField(max_length=10)
    tot = models.IntegerField(default=0)  # total score
    chi = models.IntegerField(default=0, validators=[validate_cme])
    mat = models.IntegerField(default=0, validators=[validate_cme])
    eng = models.IntegerField(default=0, validators=[validate_cme])
    phy = models.IntegerField(default=0, validators=[validate_pc])
    che = models.IntegerField(default=0, validators=[validate_pc])

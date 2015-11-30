# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('grades', '0004_remove_student_rank'),
    ]

    operations = [
        migrations.AddField(
            model_name='student',
            name='che',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='student',
            name='chi',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='student',
            name='eng',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='student',
            name='mat',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='student',
            name='phy',
            field=models.IntegerField(default=0),
        ),
        migrations.AddField(
            model_name='student',
            name='tot',
            field=models.IntegerField(default=0),
        ),
    ]

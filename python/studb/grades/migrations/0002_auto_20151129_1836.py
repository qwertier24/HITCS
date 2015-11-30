# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('grades', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='student',
            name='num',
            field=models.IntegerField(default=0),
        ),
        migrations.AlterField(
            model_name='student',
            name='rank',
            field=models.IntegerField(default=0),
        ),
    ]

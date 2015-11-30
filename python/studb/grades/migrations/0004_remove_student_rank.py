# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('grades', '0003_auto_20151129_1925'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='student',
            name='rank',
        ),
    ]

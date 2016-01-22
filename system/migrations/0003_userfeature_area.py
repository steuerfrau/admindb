# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0002_staff_staffuserfeaturemap'),
    ]

    operations = [
        migrations.AddField(
            model_name='userfeature',
            name='area',
            field=models.ForeignKey(default=1, to='system.Area'),
            preserve_default=False,
        ),
    ]

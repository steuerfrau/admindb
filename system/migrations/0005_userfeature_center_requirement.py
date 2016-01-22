# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0004_centerrequirement'),
    ]

    operations = [
        migrations.AddField(
            model_name='userfeature',
            name='center_requirement',
            field=models.ForeignKey(to='system.CenterRequirement', default=1),
            preserve_default=False,
        ),
    ]

# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0017_newarea'),
    ]

    operations = [
        migrations.AddField(
            model_name='userfeature',
            name='new_area',
            field=models.ForeignKey(default=12, to='system.NewArea'),
            preserve_default=False,
        ),
    ]

# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0003_userfeature_area'),
    ]

    operations = [
        migrations.CreateModel(
            name='CenterRequirement',
            fields=[
                ('center_requirement_id', models.AutoField(primary_key=True, serialize=False)),
                ('center_requirement', models.CharField(max_length=75, unique=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]

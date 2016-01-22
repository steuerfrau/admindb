# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0016_auto_20151215_0848'),
    ]

    operations = [
        migrations.CreateModel(
            name='NewArea',
            fields=[
                ('new_area_id', models.AutoField(serialize=False, primary_key=True)),
                ('new_area', models.CharField(max_length=255)),
                ('new_area_description', models.CharField(max_length=255, blank=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]

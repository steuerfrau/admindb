# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Staff',
            fields=[
                ('staff_id', models.AutoField(serialize=False, primary_key=True)),
                ('staff_name', models.CharField(max_length=75)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='StaffUserFeatureMap',
            fields=[
                ('staff_user_feature_map_id', models.AutoField(serialize=False, primary_key=True)),
                ('role', models.CharField(max_length=75)),
                ('staff', models.ForeignKey(to='system.Staff')),
                ('user_feature', models.ForeignKey(to='system.UserFeature')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]

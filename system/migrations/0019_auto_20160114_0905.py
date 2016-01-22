# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0018_userfeature_new_area'),
    ]

    operations = [
        migrations.CreateModel(
            name='UserFeatureType',
            fields=[
                ('user_feature_type_id', models.AutoField(primary_key=True, serialize=False)),
                ('user_feature_type', models.CharField(unique=True, max_length=75)),
                ('user_feature_type_description', models.CharField(blank=True, max_length=255)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.AlterModelOptions(
            name='newarea',
            options={'ordering': ('new_area',)},
        ),
    ]

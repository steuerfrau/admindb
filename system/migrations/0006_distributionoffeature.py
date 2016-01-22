# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0005_userfeature_center_requirement'),
    ]

    operations = [
        migrations.CreateModel(
            name='DistributionOfFeature',
            fields=[
                ('distribution_of_feature_id', models.AutoField(primary_key=True, serialize=False)),
                ('distribution_of_feature', models.CharField(max_length=255)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]

# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0009_delete_distributionoffeature'),
    ]

    operations = [
        migrations.CreateModel(
            name='DistributionOfFeature',
            fields=[
                ('distribution_of_feature_id', models.AutoField(serialize=False, primary_key=True)),
                ('distribution_of_feature', models.CharField(max_length=75)),
                ('distribution_of_feature_note', models.TextField(blank=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]

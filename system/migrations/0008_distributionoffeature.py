# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0007_delete_distributionoffeature'),
    ]

    operations = [
        migrations.CreateModel(
            name='DistributionOfFeature',
            fields=[
                ('distribution_of_feature_id', models.AutoField(primary_key=True, serialize=False)),
                ('distribution_of_feature', models.CharField(max_length=75)),
                ('distribution_of_feature_description', models.CharField(max_length=255)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]

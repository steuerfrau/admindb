# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0010_distributionoffeature'),
    ]

    operations = [
        migrations.AddField(
            model_name='userfeature',
            name='distribution_of_feature',
            field=models.ForeignKey(to='system.DistributionOfFeature', default=6),
            preserve_default=False,
        ),
    ]

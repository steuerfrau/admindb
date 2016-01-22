# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0006_distributionoffeature'),
    ]

    operations = [
        migrations.DeleteModel(
            name='DistributionOfFeature',
        ),
    ]

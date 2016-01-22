# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0011_userfeature_distribution_of_feature'),
    ]

    operations = [
        migrations.AddField(
            model_name='userfeature',
            name='distribution_of_feature_note',
            field=models.TextField(blank=True),
            preserve_default=True,
        ),
    ]

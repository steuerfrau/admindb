# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0021_auto_20160114_0908'),
    ]

    operations = [
        migrations.AddField(
            model_name='userfeature',
            name='user_feature_type',
            field=models.ForeignKey(to='system.UserFeatureType', default=5),
            preserve_default=False,
        ),
    ]

# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0012_userfeature_distribution_of_feature_note'),
    ]

    operations = [
        migrations.AddField(
            model_name='userfeature',
            name='user_feature_responsible_system_engineering',
            field=models.ForeignKey(to='system.Staff', default=8),
            preserve_default=False,
        ),
    ]

# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0014_auto_20151214_0959'),
    ]

    operations = [
        migrations.AddField(
            model_name='userfeature',
            name='user_feature_responsible_product_owner',
            field=models.ForeignKey(default=8, related_name='+', to='system.Staff'),
            preserve_default=False,
        ),
    ]

# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0015_userfeature_user_feature_responsible_product_owner'),
    ]

    operations = [
        migrations.RenameField(
            model_name='userfeature',
            old_name='user_feature_responsible_product_owner',
            new_name='user_feature_product_owner',
        ),
    ]

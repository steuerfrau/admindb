# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0020_auto_20160114_0906'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='UserFeatureTypes',
            new_name='UserFeatureType',
        ),
    ]

# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0019_auto_20160114_0905'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='UserFeatureType',
            new_name='UserFeatureTypes',
        ),
    ]

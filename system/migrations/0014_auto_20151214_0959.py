# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('system', '0013_userfeature_user_feature_responsible_system_engineering'),
    ]

    operations = [
        migrations.AddField(
            model_name='userfeature',
            name='user_feature_responsible_documentation',
            field=models.ForeignKey(default=8, related_name='+', to='system.Staff'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='userfeature',
            name='user_feature_responsible_implementation',
            field=models.ForeignKey(default=8, related_name='+', to='system.Staff'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='userfeature',
            name='user_feature_responsible_maintenance',
            field=models.ForeignKey(default=8, related_name='+', to='system.Staff'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='userfeature',
            name='user_feature_responsible_user_support',
            field=models.ForeignKey(default=8, related_name='+', to='system.Staff'),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='userfeature',
            name='user_feature_responsible_system_engineering',
            field=models.ForeignKey(related_name='+', to='system.Staff'),
            preserve_default=True,
        ),
    ]

# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Area',
            fields=[
                ('area_id', models.AutoField(serialize=False, primary_key=True)),
                ('area', models.CharField(max_length=255)),
                ('area_description', models.CharField(blank=True, max_length=255)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Backup',
            fields=[
                ('backup_id', models.AutoField(serialize=False, primary_key=True)),
                ('backup_description', models.CharField(blank=True, max_length=255)),
                ('backup_host', models.CharField(max_length=75)),
                ('backup_location', models.CharField(max_length=75)),
                ('backup_basedir', models.CharField(max_length=255)),
                ('backup_scheme', models.CharField(max_length=255)),
                ('backup_type', models.CharField(blank=True, max_length=255)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Filesystem',
            fields=[
                ('filesystem', models.AutoField(serialize=False, primary_key=True)),
                ('filesystem_type', models.CharField(max_length=75)),
                ('filesystem_mountpoint', models.CharField(max_length=255)),
                ('filesystem_storagebackend', models.CharField(max_length=75)),
                ('filesystem_devicefile', models.CharField(max_length=75)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Landspace',
            fields=[
                ('landspace_id', models.AutoField(serialize=False, primary_key=True)),
                ('landspace', models.CharField(max_length=75)),
                ('landspace_description', models.CharField(blank=True, max_length=255)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='NetworkService',
            fields=[
                ('network_service_id', models.AutoField(serialize=False, primary_key=True)),
                ('network_service', models.CharField(unique=True, max_length=75)),
                ('network_service_description', models.CharField(blank=True, max_length=255)),
                ('network_service_note', models.TextField(blank=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='NetworkServiceMap',
            fields=[
                ('network_service_map_id', models.AutoField(serialize=False, primary_key=True)),
                ('network_service_map_description', models.CharField(blank=True, max_length=255)),
                ('network_service', models.ForeignKey(to='system.NetworkService')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='RunlevelService',
            fields=[
                ('runlevel_service_id', models.AutoField(serialize=False, primary_key=True)),
                ('runlevel_service', models.CharField(unique=True, max_length=75)),
                ('runlevel_service_description', models.CharField(blank=True, max_length=255)),
                ('runlevel_service_note', models.TextField(blank=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='RunlevelServiceMap',
            fields=[
                ('runlevel_service_map_id', models.AutoField(serialize=False, primary_key=True)),
                ('runlevel_service_map_description', models.CharField(blank=True, max_length=255)),
                ('runlevel_service', models.ForeignKey(to='system.RunlevelService')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='System',
            fields=[
                ('system_id', models.AutoField(serialize=False, primary_key=True)),
                ('system', models.CharField(max_length=75)),
                ('system_description', models.CharField(blank=True, max_length=255)),
                ('system_note', models.TextField(blank=True)),
                ('area', models.ForeignKey(blank=True, on_delete=django.db.models.deletion.SET_NULL, to='system.Area', null=True)),
                ('landspace', models.ForeignKey(blank=True, on_delete=django.db.models.deletion.SET_NULL, to='system.Landspace', null=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Type',
            fields=[
                ('type_id', models.AutoField(serialize=False, primary_key=True)),
                ('type', models.CharField(max_length=75)),
                ('type_description', models.CharField(blank=True, max_length=255)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='UserFeature',
            fields=[
                ('user_feature_id', models.AutoField(serialize=False, primary_key=True)),
                ('user_feature', models.CharField(unique=True, max_length=75)),
                ('user_feature_description', models.CharField(blank=True, max_length=255)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.AddField(
            model_name='system',
            name='type',
            field=models.ForeignKey(blank=True, on_delete=django.db.models.deletion.SET_NULL, to='system.Type', null=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='runlevelservicemap',
            name='system',
            field=models.ForeignKey(to='system.System'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='runlevelservicemap',
            name='user_feature',
            field=models.ForeignKey(blank=True, on_delete=django.db.models.deletion.SET_NULL, to='system.UserFeature', null=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='networkservicemap',
            name='system',
            field=models.ForeignKey(to='system.System'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='networkservicemap',
            name='user_feature',
            field=models.ForeignKey(blank=True, on_delete=django.db.models.deletion.SET_NULL, to='system.UserFeature', null=True),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='filesystem',
            name='system',
            field=models.ForeignKey(to='system.System'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='backup',
            name='system',
            field=models.ForeignKey(to='system.System'),
            preserve_default=True,
        ),
    ]

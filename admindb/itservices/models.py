"""
Model definition for app itservice.
"""
from django.db import models

class Type(models.Model):
    name = models.CharField(max_length=75)
    description = models.TextField(blank=True)

    def __str__(self):
        return str(self.name)


class Distribution(models.Model):
    name = models.CharField(max_length=75)
    description = models.TextField(blank=True)

    def __str__(self):
        return str(self.name)


class Group(models.Model):
    name = models.CharField(max_length=255)
    short = models.CharField(max_length=8)
    description = models.CharField(max_length=255, blank=True)

    def __str__(self):
        return self.name

    class Meta:
        ordering = ('name',)


class ITService(models.Model):
    name = models.CharField(max_length=75, unique=True)
    short = models.CharField(max_length=8)
    description = models.CharField(max_length=255, blank=True)
    group = models.ForeignKey(Group)
    its_type = models.ForeignKey(Type)
    distribution = models.ForeignKey(Distribution)
    distribution_note = models.TextField(blank=True)

    def __str__(self):
        return str(self.name)

    class Meta:
        ordering = ('name',)

from django.db import models


class Area(models.Model):
    area_id = models.AutoField(primary_key=True)
    area = models.CharField(max_length=255)
    area_description = models.CharField(max_length=255, blank=True)
    def __str__(self):              # __unicode__ on Python 2
        return self.area


class NewArea(models.Model):
    new_area_id = models.AutoField(primary_key=True)
    new_area = models.CharField(max_length=255)
    new_area_short = models.CharField(max_length=7)
    new_area_description = models.CharField(max_length=255, blank=True)
    def __str__(self):              # __unicode__ on Python 2
        return self.new_area
    class Meta:
        ordering = ('new_area',)


class Landspace(models.Model):
    landspace_id = models.AutoField(primary_key=True)
    landspace = models.CharField(max_length=75)
    landspace_description = models.CharField(max_length=255, blank=True)
    def __str__(self):              # __unicode__ on Python 2
        return self.landspace
    

class Type(models.Model):
    type_id = models.AutoField(primary_key=True)
    type = models.CharField(max_length=75)
    type_description = models.CharField(max_length=255, blank=True)
    def __str__(self):              # __unicode__ on Python 2
        return self.type


class System(models.Model):
    system_id = models.AutoField(primary_key=True)
    system = models.CharField(max_length=75)
    system_description = models.CharField(max_length=255, blank=True)
    system_note = models.TextField(blank=True)
    area = models.ForeignKey(Area, blank=True, null=True, on_delete=models.SET_NULL)
    new_area = models.ForeignKey(NewArea, blank=True, null=True, on_delete=models.SET_NULL)
    landspace = models.ForeignKey(Landspace, blank=True, null=True, on_delete=models.SET_NULL)
    type = models.ForeignKey(Type, blank=True, null=True, on_delete=models.SET_NULL)
    def __str__(self):              # __unicode__ on Python 2
        return self.system


class NetworkService(models.Model):
    network_service_id = models.AutoField(primary_key=True)
    network_service = models.CharField(max_length=75, unique=True)
    network_service_description = models.CharField(max_length=255, blank=True)
    network_service_note = models.TextField(blank=True)
    def __str__(self):              # __unicode__ on Python 2
        return self.network_service


class CenterRequirement(models.Model):
    center_requirement_id = models.AutoField(primary_key=True)
    center_requirement = models.CharField(max_length=75, unique=True)
    def __str__(self):
        return self.center_requirement


class DistributionOfFeature(models.Model):
    distribution_of_feature_id = models.AutoField(primary_key=True)
    distribution_of_feature = models.CharField(max_length=75)
    distribution_of_feature_note = models.TextField(blank=True)
    def __str__(self):
        return str(self.distribution_of_feature)


class Staff(models.Model):
    staff_id = models.AutoField(primary_key=True)
    staff_name = models.CharField(max_length=75)
    def __str__(self):
        return self.staff_name


class UserFeatureType(models.Model):
    user_feature_type_id = models.AutoField(primary_key=True)
    user_feature_type = models.CharField(max_length=75, unique=True)
    user_feature_type_description = models.CharField(max_length=255, blank=True)
    def __str__(self):
        return self.user_feature_type


class UserFeature(models.Model):
    user_feature_id = models.AutoField(primary_key=True)
    user_feature = models.CharField(max_length=75, unique=True)
    user_feature_description = models.CharField(max_length=255, blank=True)
    user_feature_type = models.ForeignKey(UserFeatureType)
    user_feature_responsible_system_engineering = models.ForeignKey(Staff,related_name='+')
    user_feature_responsible_implementation = models.ForeignKey(Staff,related_name='+')
    user_feature_responsible_maintenance = models.ForeignKey(Staff,related_name='+')
    user_feature_responsible_user_support = models.ForeignKey(Staff,related_name='+')
    user_feature_responsible_documentation = models.ForeignKey(Staff,related_name='+')
    user_feature_product_owner = models.ForeignKey(Staff,related_name='+')
    area = models.ForeignKey(Area)
    new_area = models.ForeignKey(NewArea)
    center_requirement = models.ForeignKey(CenterRequirement)
    distribution_of_feature = models.ForeignKey(DistributionOfFeature)
    distribution_of_feature_note = models.TextField(blank=True)
    def __str__(self):              # __unicode__ on Python 2
        return str(self.user_feature)


class StaffUserFeatureMap(models.Model):
    staff_user_feature_map_id = models.AutoField(primary_key=True)
    staff = models.ForeignKey(Staff)
    user_feature = models.ForeignKey(UserFeature)
    role = models.CharField(max_length=75)
    def __str__(self):
        return str(Staff.objects.get(pk=self.staff_id)) + " " + str(UserFeature.objects.get(pk=self.user_feature_id))


class NetworkServiceMap(models.Model):
    network_service_map_id = models.AutoField(primary_key=True)    
    system = models.ForeignKey(System)
    network_service = models.ForeignKey(NetworkService)
    network_service_map_description = models.CharField(max_length=255, blank=True)
    user_feature = models.ForeignKey(UserFeature, blank=True, null=True, on_delete=models.SET_NULL)
    def __str__(self):              # __unicode__ on Python 2
#        return self.network_service_map_description
        return str(self.network_service_map_id)

class RunlevelService(models.Model):
    runlevel_service_id = models.AutoField(primary_key=True)
    runlevel_service = models.CharField(max_length=75, unique=True)
    runlevel_service_description = models.CharField(max_length=255, blank=True)
    runlevel_service_note = models.TextField(blank=True)
    def __str__(self):              # __unicode__ on Python 2
        return self.runlevel_service

 
class RunlevelServiceMap(models.Model):
    runlevel_service_map_id = models.AutoField(primary_key=True)    
    system = models.ForeignKey(System)
    runlevel_service = models.ForeignKey(RunlevelService)
    runlevel_service_map_description = models.CharField(max_length=255, blank=True)
    user_feature = models.ForeignKey(UserFeature, blank=True, null=True, on_delete=models.SET_NULL)
    def __str__(self):              # __unicode__ on Python 2
#        return self.runlevel_service_map_description
        return str(self.runlevel_service_map_id)


class Backup(models.Model):
    backup_id = models.AutoField(primary_key=True)
    backup_description = models.CharField(max_length=255, blank=True)
    backup_host = models.CharField(max_length=75)
    backup_location = models.CharField(max_length=75) # Make seperate table
    backup_basedir = models.CharField(max_length=255)
    system = models.ForeignKey(System)
    backup_scheme = models.CharField(max_length=255) # Make seperate table
    backup_type= models.CharField(max_length=255, blank=True) # Make seperate table
    def __str__(self):
        return str(System.objects.get(pk=self.system_id)) + " " + str(self.backup_description) + " \"" + str(self.backup_basedir) + "\""


class Filesystem(models.Model):
    filesystem = models.AutoField(primary_key=True)
    filesystem_type =  models.CharField(max_length=75) # Make seperate table
    filesystem_mountpoint = models.CharField(max_length=255)
    filesystem_storagebackend = models.CharField(max_length=75) # Make seperate table
    system = models.ForeignKey(System)
    filesystem_devicefile = models.CharField(max_length=75)
    def __str__(self):
        return str(System.objects.get(pk=self.system_id)) + " \"" + str(self.filesystem_mountpoint) + "\""


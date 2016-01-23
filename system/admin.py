from django.contrib import admin
from system.models import Area
from system.models import Landspace
from system.models import Type
from system.models import System
from system.models import NetworkService
from system.models import UserFeature
from system.models import NetworkServiceMap
from system.models import RunlevelService
from system.models import RunlevelServiceMap
from system.models import Filesystem
from system.models import Backup
from system.models import Staff
from system.models import StaffUserFeatureMap
from system.models import CenterRequirement
from system.models import DistributionOfFeature
from system.models import NewArea
from system.models import UserFeatureType

class NetworkServiceMapInline(admin.TabularInline):
    model = NetworkServiceMap
    extra = 1

class RunlevelServiceMapInline(admin.TabularInline):
    model = RunlevelServiceMap
    extra = 1


class StaffUserFeatureMapInline(admin.TabularInline):
    model = StaffUserFeatureMap
    extra = 1

class ServiceInline(admin.TabularInline):
    model = System
    extra = 1


class FilesystemInline(admin.TabularInline):
    model = Filesystem
    extra = 1


class BackupInline(admin.TabularInline):
    model = Backup
    extra = 1


class UserFeatureInline(admin.TabularInline):
    model = UserFeature
    exclude = ['distribution_of_feature_note',]
    extra = 1


class SystemInline(admin.TabularInline):
    model = System
    extra = 1


class SystemAdmin(admin.ModelAdmin):
    fieldsets = [
        (None, {'fields': ['system', 'type']}),
	('Details', {'fields': ['system_description', 'system_note']}),
	('Mapping', {'fields': ['area', 'new_area', 'landspace']})
	# ('Details', {'fields': ['system_description', 'system_note'], 'classes': ['collapse']}),
	# ('Mapping', {'fields': ['area', 'landspace'], 'classes': ['collapse']})
    ]
    inlines = [NetworkServiceMapInline, RunlevelServiceMapInline, FilesystemInline, BackupInline]
    # fields = ['system', 'type_id', 'system_description', 'system_note', 'area_id', 'landspace_id']
    list_display = ('system', 'new_area', 'area', 'type', 'landspace')
    list_filter = ('area', 'type', 'landspace')
    search_fields = ['system']
    ordering = ('new_area', 'area', 'system')

class UserFeatureAdmin(admin.ModelAdmin):
    fieldsets = [
        (None, {'fields': ['user_feature', 'user_feature_type', 'center_requirement', 'user_feature_description', 'area', 'new_area', 'distribution_of_feature', 'distribution_of_feature_note']}),
        ('Fixed Responsibilities', {
             'classes': ('wide', 'extrapretty'),
             'fields': ['user_feature_responsible_system_engineering',
		     'user_feature_responsible_implementation', 
                     'user_feature_responsible_maintenance', 
		     'user_feature_responsible_user_support',
		     'user_feature_responsible_documentation',
                     'user_feature_product_owner']})    
    ]
    list_display = ('user_feature', 'user_feature_type', 'center_requirement', 'new_area', 'area', 'distribution_of_feature')
    list_filter = ('center_requirement', 'area', 'distribution_of_feature')
    ordering = ('new_area', 'user_feature')
    inlines = [StaffUserFeatureMapInline, NetworkServiceMapInline, RunlevelServiceMapInline]
    search_fields = ('user_feature',)


class AreaAdmin(admin.ModelAdmin):
    fieldsets = [
        (None, {'fields': ['area', 'area_description']})
    ]
    ordering = ['area']
    inlines = [UserFeatureInline,]


class NewAreaAdmin(admin.ModelAdmin):
    fieldsets = [
        (None, {'fields': ['new_area', 'new_area_short', 'new_area_description']})
    ]
    list_display = ('new_area', 'new_area_short', 'new_area_description')
    ordering = ['new_area_short']
    inlines = [UserFeatureInline, SystemInline]


class BackupAdmin(admin.ModelAdmin):
    list_display = ('backup_id', 'system', 'backup_description', 'backup_host', 'backup_location', 'backup_basedir')


class StaffAdmin(admin.ModelAdmin):
    inlines = [StaffUserFeatureMapInline]
    # list_display = ('staff_name', )


admin.site.register(System, SystemAdmin)
admin.site.register(UserFeature, UserFeatureAdmin)
admin.site.register(Area, AreaAdmin)
admin.site.register(NewArea, NewAreaAdmin)
admin.site.register(Landspace)
admin.site.register(Type)
admin.site.register(NetworkService)
admin.site.register(NetworkServiceMap)
admin.site.register(RunlevelService)
admin.site.register(RunlevelServiceMap)
admin.site.register(Backup, BackupAdmin)
admin.site.register(Staff, StaffAdmin)
admin.site.register(StaffUserFeatureMap)
admin.site.register(CenterRequirement)
admin.site.register(Filesystem)
admin.site.register(DistributionOfFeature)
admin.site.register(UserFeatureType)

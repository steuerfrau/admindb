import django_tables2 as tables
from system.models import UserFeature, NewArea, System

class UserFeatureTable(tables.Table):
    class Meta:
        model = UserFeature
        # add class="paleblue" to <table> tag
        attrs = {"class": "paleblue"}
        sequence = ("user_feature", "user_feature_description", "new_area", "user_feature_type", "center_requirement", "distribution_of_feature")
        order_by = ("new_area", "user_feature")
        orderable = True
        per_page = 200

class AreaTable(tables.Table):
    class Meta:
        model = NewArea
        # add class="paleblue" to <table> tag
        attrs = {"class": "paleblue"}
        sequence =("new_area", "new_area_description")
        orderable = True
        order_by = ("new_area")

class SystemTable(tables.Table):
    class Meta:
        model = System
        # add class="paleblue" to <table> tag
        attrs = {"class": "paleblue"}
        sequence = ("system", "area", "system_description", "type", "landspace")
        orderable = True
        order_by = ("area", "landspace", "type", "system")


from django.conf.urls import patterns
from django.conf.urls import url
from system import views

urlpatterns = patterns('',
    url(r'^userfeature_list$', views.userfeature_list, name='userfeature_list'),
    url(r'^area_list$', views.area_list, name='area_list'),
    url(r'^system_list$', views.system_list, name='system_list'),
 
    url(r'^system_detail/(?P<system_id>\d+)/$', views.system_detail, name='system_detail'),
)

from django.shortcuts import render
from django.shortcuts import get_object_or_404
from django.http import HttpResponse
from django.http import Http404                                                 
from django.template import RequestContext, loader

import django_tables2

import system.models                                                                              
import system.tables

from .forms import NameForm, SystemForm

def userfeature_list(request):
    table = system.tables.UserFeatureTable(system.models.UserFeature.objects.all())
    django_tables2.RequestConfig(request, paginate=False).configure(table)
    # my_userfeature_list = system.models.UserFeature.objects.order_by('user_feature')
    # context = {'my_userfeature_list': my_userfeature_list}
    #  return render(request, 'system/userfeature_list.html', context)
    return render(request, 'system/userfeature_list.html', {'table': table})

def area_list(request):
    table = system.tables.AreaTable(system.models.NewArea.objects.all())
    django_tables2.RequestConfig(request, paginate=False).configure(table)
    return render(request, 'system/area_list.html', {'table': table})
    # my_area_list = system.models.NewArea.objects.order_by('new_area')
    # context = {'my_area_list': my_area_list}
    # return render(request, 'system/area_list.html', context)

def system_list(request):
    table = system.tables.SystemTable(system.models.System.objects.all())
    django_tables2.RequestConfig(request, paginate=False).configure(table)
    return render(request, 'system/system_list.html', {'table': table})
    # my_system_list = system.models.System.objects.all()
    # context = {'my_systen_list': my_system_list}
    # return render(request, 'system/system_list.html', context)

def system_detail(request, system_id):
    my_system_detail = get_object_or_404(system.models.System, pk=system_id)

    form = SystemForm(instance=my_system_detail)
    form.fields['system'].widget.attrs['readonly'] = True
    form.fields['system_description'].widget.attrs['readonly'] = True
    form.fields['system_note'].widget.attrs['readonly'] = True
    form.fields['area'].widget.attrs['readonly'] = True
    form.fields['landspace'].widget.attrs['readonly'] = True
    form.fields['type'].widget.attrs['readonly'] = True

    network_service_formset = NetworkServiceFormSet(instance=my_system_detail)
    # Make network_service_formset widgets read only

    # return render_to_response("system/system_detail.html", {
    #     "form": form,
    #     "network_service_formset": network_service_formset,
    # }, context_instance=RequestContext(request))
    return render(request, 'system/system_detail.html', {
         'form': form,
         'network_service_formset': network_service_formset,
    })

    # my_system_detail = get_object_or_404(system.models.System, pk=system_id)
    # return render(request, 'system/system_detail.html', { 'my_system_detail': my_system_detail})

    # django_tables2.RequestConfig(request, paginate=False).configure(table)
    # return render(request, 'system/system_list.html', {'table': table})
    # my_system_list = system.models.System.objects.all()
    # context = {'my_systen_list': my_system_list}
    # return render(request, 'system/system_list.html', context)


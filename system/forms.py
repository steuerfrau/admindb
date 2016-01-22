from django import forms
from django.forms import ModelForm, Textarea, TextInput
from system.models import System, NetworkServiceMap
from django.forms.models import inlineformset_factory


class NameForm(forms.Form):
    your_name = forms.CharField(label='Your name', max_length=100)

# NetworkServiceFormSet = inlineformset_factory(System,
#     NetworkServiceMap,
#     can_delete=False,)

class SystemForm(ModelForm):
    class Meta:
        model = System
        editable = False
        # When manipulation the list of fields, please update views.py to make them read-only!
        fields = ['system', 'system_description', 'system_note', 'area', 'landspace', 'type']


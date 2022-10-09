from .models import *
from django import forms



class Createitem(forms.ModelForm):
    class Meta:
        model=createitem
        fields="__all__"
        
class Createpatients(forms.ModelForm):
    class Meta:
        model=createpatients
        fields="__all__"
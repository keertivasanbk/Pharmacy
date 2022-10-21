from django.shortcuts import render,redirect
from django.http import *
from django.contrib import messages
from django.views.generic import TemplateView,ListView,UpdateView,DeleteView
from django.urls import reverse,reverse_lazy
from django.contrib.auth import authenticate,login,logout
from django.contrib import auth
from django.contrib.auth.models import User
from .forms import *
from .models import *

def homepage(request):
    return render(request,"index.html")

def admin_login(request):     # ADMIN LOGIN PAGE
    if request.method=="POST":
        username=request.POST.get("username")
        password=request.POST.get("password")
        user= authenticate(username=username,password=password)
        
        if user is not None:
            login(request,user)
            username=user.first_name
            return render(request,"nextpage.html",{"username":username})
        else:
            messages.error(request,"bad_credentials")
            return redirect('home')
    else:
        return render(request,'index.html')

def admin_page(request):   # MEDICINE CREATE
    if request.method == "POST":
        form=Createitem(request.POST or None)
        if form.is_valid():
            form.save(commit=True)
            return redirect('admin_page')
        else:
            print(form.errors)
    else:
        form=Createitem()

    return render(request,"create.html",{"form":form})


class Detailslist(ListView):  # MEDICINE LIST
    model = createitem
    template_name = "list.html"
    context_object_name = "list_details"



class DetailsUpdate(UpdateView):   #MEDICINE UPDATE
    model = createitem
    fields = ["reference_no","company_name","medicine_name","issue_date","Expiry_date","amount","uses",]
    success_url = reverse_lazy("admin_page")
    template_name = "update.html"


class DetailDelete(DeleteView):    #MEDICINE DELETE
    model = createitem
    success_url = reverse_lazy("admin_page")
    template_name = "delete.html"


def patient_create(request):   # PAITENTS CREATE
    if request.method == "POST":
        form=Createpatients(request.POST or None)
        if form.is_valid():
            form.save(commit=True)
            return redirect('paitents_create')
        else:
            print(form.errors)
    else:
        form=Createpatients()

    return render(request,"createpaitents.html",{"form":form})


class paitentslist(ListView):  # PAITENTS LIST
    model = createpatients
    template_name = "listpaitents.html"
    context_object_name = "list_details"



def logout(request):
    auth.logout(request)  # logout is predefined
    return redirect('home')

"""pharmacy URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/4.1/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.urls import path
from pharmacyapp.views import *

urlpatterns = [
    path("admin/", admin.site.urls),
    path("home/",homepage,name="home"),
    path("",admin_login,name="admin_login"),
    path("admin_page/",admin_page ,name="admin_page"),
    path("admin_list/",Detailslist.as_view(),name="admin_list"),
    path("<pk>/admin_update",DetailsUpdate.as_view(),name="admin_update"),
    path("<pk>/admin_delete",DetailDelete.as_view(),name="admin_delete"),
    path("paitents_create",patient_create,name="paitents_create"),
    path("paitents_list",paitentslist.as_view(),name="paitents_list"),
    path("logout/",logout,name="logout"),
]

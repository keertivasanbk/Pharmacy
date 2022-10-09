from django.db import models
from datetime import datetime


# Create your models here.
class createitem(models.Model):
    reference_no=models.IntegerField()
    company_name=models.CharField(max_length=50)
    medicine_name=models.CharField(max_length=50)
    issue_date=models.DateField(max_length=20)
    Expiry_date=models.DateField(max_length=30)
    amount=models.IntegerField()
    uses=models.CharField(max_length=50)
    

    def __str__(self):
        return str(self.reference_no)

class createpatients(models.Model):
    patient_name=models.CharField(max_length=50)
    age=models.IntegerField()
    place=models.CharField(max_length=40)
    phonenumber=models.IntegerField()
    weight=models.IntegerField()
    medicine_puruchased=models.CharField(max_length=50)
    





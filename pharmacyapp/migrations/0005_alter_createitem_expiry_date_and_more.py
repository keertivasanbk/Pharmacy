# Generated by Django 4.1 on 2022-09-29 08:23

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ("pharmacyapp", "0004_alter_createitem_expiry_date_and_more"),
    ]

    operations = [
        migrations.AlterField(
            model_name="createitem",
            name="Expiry_date",
            field=models.IntegerField(max_length=30),
        ),
        migrations.AlterField(
            model_name="createitem",
            name="issue_date",
            field=models.IntegerField(max_length=20),
        ),
    ]

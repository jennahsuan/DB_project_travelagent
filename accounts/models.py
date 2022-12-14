from django.db import models
from phonenumber_field.modelfields import PhoneNumberField
from django.contrib.auth.models import User
import datetime
# from django_countries.fields import CountryField


# Create your models here.

class GenderOptions(models.TextChoices):
    FEMALE = 'F'
    MALE = 'M'

# class NationOptions(models.TextChoices):
#     TAIWAN = 'Taiwan'
#     JAPAN = 'Japan'
#     KOREA = 'Korea'
#     USA = 'USA'
#     Russia ='Russia' 
#     Switzerland = 'Switzerland'
#     Iceland = 'Iceland'


class Member(models.Model):
    user = models.OneToOneField(User, null=True, on_delete=models.CASCADE)
    name = models.CharField(max_length=200, null=True, blank=True, unique=False)
    phone = PhoneNumberField(null=False, blank=False, unique=False)
    email = models.EmailField(null=True, blank=True)
    gender = models.CharField(max_length=1, choices=GenderOptions.choices)
    birthday = models.DateField(default=datetime.date.today)
    nation = models.CharField(max_length=100) # , choices=NationOptions.choices CountryField(null=False, blank=False)
    register_Date = models.DateField(default=datetime.date.today)
    # class Meta:
    #     app_label = 'accounts.member'
    def __str__(self):
        return str(self.user.username)

class Guide(models.Model):
    user = models.OneToOneField(User, null=True, on_delete=models.CASCADE)
    name = models.CharField(max_length=200, null=True, blank=True, unique=False)
    birthday = models.DateField(default=datetime.date.today)
    language = models.CharField(max_length=200)
    seniority = models.IntegerField(default=0)
    # class Meta:
    #     app_label = 'accounts.guide'
    def __str__(self):
        return str(self.user.username)



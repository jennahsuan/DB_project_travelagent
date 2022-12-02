from django.db import models
from phonenumber_field.modelfields import PhoneNumberField
from django.contrib.auth.models import User
import datetime


# Create your models here.

class GenderOptions(models.TextChoices):
    FEMALE = 'F'
    MALE = 'M'

class NationOptions(models.TextChoices):
    TAIWAN = 'Taiwan'
    JAPAN = 'Japan'
    KOREA = 'Korea'
    USA = 'USA'

class Member(models.Model):
    user = models.OneToOneField(User, null=True, on_delete=models.CASCADE)
    # name = models.CharField(max_length=200, null=False, blank=False, unique=False)
    phone = PhoneNumberField(null=False, blank=False, unique=True)
    gender = models.CharField(max_length=1, choices=GenderOptions.choices)
    birthday = models.DateField(default=datetime.date.today)
    nation = models.CharField(max_length=20, choices=NationOptions.choices)
    register_Date = models.DateField(default=datetime.date.today)
    # class Meta:
    #     app_label = 'accounts.member'
    def __str__(self):
        return str(self.user.username)

class Guide(models.Model):
    user = models.OneToOneField(User, null=True, on_delete=models.CASCADE)
    # name = models.CharField(max_length=200, null=False, blank=False, unique=False)
    phone = PhoneNumberField(unique=True)
    birthday = models.DateField(default=datetime.date.today)
    language = models.CharField(max_length=200)
    seniority = models.IntegerField(default=0)
    # class Meta:
    #     app_label = 'accounts.guide'
    def __str__(self):
        return str(self.user.username)



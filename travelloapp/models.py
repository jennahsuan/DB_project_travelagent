from django.db import models
from itinerary.models import *
from accounts.models import *
from datetime import date
# import uuid

# Create your models here.
class Destination(models.Model):
    name = models.CharField(max_length=100)
    img = models.ImageField(upload_to = 'pics')
    desc = models.TextField()
    price = models.IntegerField()
    offer = models.BooleanField(default=False)

'''Above is source code'''

class Tour(models.Model):
    # id = models.IntegerField(primary_key=True, default=0, editable=False)
    # name = models.CharField(max_length=100, null=False, blank=False)
    itinerary_plan = models.ForeignKey(Itinerary, on_delete=models.CASCADE, null = False, default=0)
    bus = models.ForeignKey(Bus, on_delete=models.SET_NULL, null = True, blank = True, default=0)
    startDate = models.DateField(auto_now_add=False,  blank=True, default=date.today) 
    # endDate = models.DateField(auto_now=False, blank=True, default=date.today) 
    price = models.IntegerField()
    guide = models.ForeignKey(Guide, on_delete=models.SET_NULL, null = True, blank = True)
    field = models.CharField(max_length=100, null=True, blank=True)
    total_tourist = models.IntegerField()
    max_tourist = models.IntegerField(default = 50)
    
    # TODO
    def update_total_tourist():
        return
    def __str__(self):
        return f'{self.id}'


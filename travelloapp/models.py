from django.db import models
from itinerary.models import *
from accounts.models import Guide
from datetime import date

# Create your models here.
class Destination(models.Model):
    name = models.CharField(max_length=100)
    img = models.ImageField(upload_to = 'pics')
    desc = models.TextField()
    price = models.IntegerField()
    offer = models.BooleanField(default=False)

'''Above is source code'''

class Tour(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    name = models.CharField(max_length=100, null=False, blank=False)
    itinerary_plan = models.ForeignKey(Itinerary, on_delete=models.CASCADE, null = False)
    bus = models.ForeignKey(Bus, on_delete=models.SET_NULL, null = True, blank = True)
    startDate = models.DateField(auto_now_add=False,  blank=True, default=date.today) 
    endDate = models.DateField(auto_now=False, blank=True, default=date.today) 
    price = models.IntegerField()
    guide = models.ForeignKey(Guide, on_delete=models.SET_NULL, null = True, blank = True)
    field = models.CharField(max_length=100, null=True, blank=True)
    total_tourist = models.IntegerField()
    max_tourist = models.IntegerField()
    
    # TODO
    def update_total_tourist():
        return
    def __str__(self):
        return f'{self.name}'
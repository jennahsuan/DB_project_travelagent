import uuid
from django.db import models
# import datetime
# from datetime import datetime, date

# Create your models here.

class Site(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    name =  models.CharField(max_length=100, null=False, blank=False)
    location = models.CharField(max_length=100, null=False, blank=False)
    def __str__(self):
        return f'{self.name}'
class Hotel(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    name =  models.CharField(max_length=100, null=False, blank=False)
    location = models.CharField(max_length=100, null=False, blank=False)
    def __str__(self):
        return f'{self.name}'
class Restaurant(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    name =  models.CharField(max_length=100, null=False, blank=False)
    location = models.CharField(max_length=100, null=False, blank=False)
    def __str__(self):
        return f'{self.name}'

class Bus(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    driverName =  models.CharField(max_length=50, null=False, blank=False)
    company =  models.CharField(max_length=50, null=True, blank=True)
    year = models.IntegerField(blank=True)
    seat_number = models.IntegerField(null=False, blank=False)

class Itinerary(models.Model):
    id = models.UUIDField(primary_key=True, default=uuid.uuid4, editable=False)
    name = models.CharField(max_length=100, null=True, blank=True)
    site1 = models.ForeignKey(Site, on_delete=models.SET_NULL, null = True, related_name='site1')
    lunch1 = models.ForeignKey(Restaurant, on_delete=models.SET_NULL, null = True, related_name='lunch1')
    site2 = models.ForeignKey(Site, on_delete=models.SET_NULL, null = True, related_name='site2')
    hotel1 = models.ForeignKey(Hotel, on_delete=models.SET_NULL, null = True)
    site3 = models.ForeignKey(Site, on_delete=models.SET_NULL, null = True, related_name='site3')
    lunch1 = models.ForeignKey(Restaurant, on_delete=models.SET_NULL, null = True, related_name='lunch2')
    site4 = models.ForeignKey(Site, on_delete=models.SET_NULL, null = True, related_name='site4')
    def __str__(self):
        return f'{self.name}'


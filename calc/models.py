from django.db import models
from accounts.models import Member
from travelloapp.models import Tour
import uuid

# Create your models here.
class Order(models.Model):
    # id = models.IntegerField(primary_key=True, default=0, editable=False)
    tour = models.ForeignKey(Tour, on_delete=models.CASCADE)
    member = models.ForeignKey(Member, on_delete=models.CASCADE)
    order_tourist_count = models.IntegerField(blank=False, null=False, default= 1)
    order_price = models.IntegerField(blank=True, null=True)

    class Meta:
        verbose_name = "Order"
        verbose_name_plural = "Orders"
    def __str__(self):
        return str(self.id)
    # def save(self, *args, **kwargs):
    #     # calculate total price
    #     unit_price = self.tour.price
    #     self.order_price = self.order_tourist_count * unit_price
    #     super().save(*args, **kwargs)

class Tourist(models.Model):
    # id = models.CharField(primary_key=True, max_length=10)
    name = models.CharField(max_length=200, null=False, blank=False)
    order = models.ForeignKey(Order, on_delete=models.CASCADE)
    food_concern = models.CharField(max_length=200, null=True, blank=True)
    allergic = models.CharField(max_length=200, null=True, blank=True)
    disease = models.CharField(max_length=200, null=True, blank=True)
    id_card = models.CharField(max_length=10, default ='H111111111')

    def __str__(self):
        return str(self.id)

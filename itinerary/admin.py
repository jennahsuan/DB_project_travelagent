from django.contrib import admin
from .models import *
# Register your models here.

admin.site.register(Site)
admin.site.register(Restaurant)
admin.site.register(Hotel)
admin.site.register(Bus)
admin.site.register(Itinerary)
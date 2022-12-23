from django.urls import path
from . import views

urlpatterns = [
    path('',views.search_itinerary, name='index'),
    path('contact.html', views.contact, name="contact"),
    path('index.html', views.search_itinerary, name="index")
    
]
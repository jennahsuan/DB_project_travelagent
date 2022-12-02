from django.shortcuts import render

from rest_framework.response import Response
from rest_framework.viewsets import ModelViewSet
from rest_framework import generics
from .models import Itinerary
from .serializers import ItinerarySerializer
from main.google_api_request import travelTime
import json
# Create your views here.

'''Code from other project'''
# class ItineraryViewSet(ModelViewSet):
#     queryset = Itinerary.objects.all()
#     serializer_class = ItinerarySerializer

#     # def create(self, request, *args, **kwargs):
#     #     if request.method == 'POST':
#     #         tripname = request.POST.get('tripname')
#     #         startdate = request.POST.get('startdate')
#     #         enddate = request.POST.get('enddate')
#     #         location = request.POST.get('location')
#     #         vehicle = request.POST.get('vehicle')
#     #         newTrip = Itinerary.objects.create(tripname=tripname, location=location,vehicle=vehicle, startDate=startdate, endDate=enddate)
#     #         newTrip.save()

#     #         serializer = ItinerarySerializer(newTrip)
#     #         return Response(serializer.data)
#     def update(self, request, *args, **kwargs):
#         if request.data.get('attractions') is not None:
#             request.data._mutable = True
#             request.data["travel_time"] = travelTime(json.loads(request.data["attractions"]))
#             request.data._mutable = False


#         return super().update(request,args, **kwargs)
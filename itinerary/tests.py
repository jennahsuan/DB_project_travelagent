from django.test import TestCase

# Create your tests here.

# RUN IN TERMINAL
# python manage.py test itinerary.tests

from .models import Itinerary
from rest_framework.test import RequestsClient

'''code from other project'''
# class TestItinerary(TestCase):
#     def setUp(self):
#         Itinerary.objects.create(tripname = 'Green Island Trip', startDate = '2022-02-28', endDate = '2022-03-05', host = 'somebody')
#         Itinerary.objects.create(tripname = 'Go to Japan', startDate = '2023-06-09', endDate = '2023-06-15', host = 'monkey', vehicle = 'boat')
#         Itinerary.objects.create(tripname = 'Taichung with friends', startDate = '2022-05-30', endDate = '2022-06-03', host = 'juice', vehicle = 'feet')

#     def test_host(self):
#         greentrip = Itinerary.objects.get(tripname = 'Green Island Trip')
#         self.assertEqual(greentrip.host, 'somebody')

#     def test_status(self):
#         greentrip = Itinerary.objects.get(tripname = 'Green Island Trip')
#         jptrip = Itinerary.objects.get(tripname = 'Go to Japan')
#         taichungtrip = Itinerary.objects.get(tripname = 'Taichung with friends')
#         self.assertEqual(greentrip.status, 'past')
#         self.assertEqual(jptrip.status, 'ready')
#         self.assertEqual(taichungtrip.status, 'ongoing')

#     def test_itinerary_client(self):
#         client = RequestsClient()
#         response = client.get('https://127.0.0.1:8000/itinerary/')
#         assert response.status_code == 200


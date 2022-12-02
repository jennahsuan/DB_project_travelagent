from django.urls import path, include
from . import views

from rest_framework.routers import DefaultRouter

router = DefaultRouter()

router.register("itinerary", views.ItineraryViewSet, basename="itinerary")

# app_name = "users"

urlpatterns = [
	path("", include(router.urls)),
	#.as_view only required when using class-based view
	# path('itinerary/', views.ItineraryView.as_view(), name="Itinerary_View"),
	# path('itinerary/<int:pk>/'),
]
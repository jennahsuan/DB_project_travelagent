from django.urls import path
from django.conf.urls import url
from . import views

urlpatterns = [
    path('',views.home, name='home'),
    path('add',views.add, name='add'),
    # path('book.html', views.book, name="book"),
    url(r'^book/tour/(?P<tour_id>[0-9]+)-(?P<tourists_count>[0-9]+)/$', views.book, name='book'),
]
from django.urls import path, re_path
from . import views


urlpatterns = [
    path("register",views.register, name="register"),
    path("login", views.login, name="login"),
    path("logout", views.logout, name="logout"),
    path('contact.html', views.contact, name="contact"),
    re_path(r'^guide-tour-detail/(?P<tour_id>[0-9]+)/$', views.guide_check_detail, name="detail"),
    
]
from django.shortcuts import render
from . models import *

# Create your views here.
def index(request):

    dests = Destination.objects.all()
    

    return render(request, 'index.html',{'dests': dests})


def contact(request):
    return render(request, 'contact.html')



# def guide_check_schdule(request):
#     return render(request,  "guide-schedule.html")

# def guide_check_detail(request):
#     return render(request,  "guide-tour-detail.html")
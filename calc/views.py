from django.shortcuts import render
from django.http import HttpResponse
from .models import *
# Create your views here.


def home(request):
    return render(request, 'home.html',{'name':'Utkarsh'})

def add(request):

    val1 = int(request.POST['num1'])
    val2 = int(request.POST['num2'])
    res = val1 + val2
    return render(request,"result.html",{'result':res})

def book(request):
    target_tour = Tour.objects.get(number=request.POST.get("tourid"))
    names = []
    if 'add' in request.POST:  # add dependee
        name = request.POST.get("depName")
        names.append(name)
        for i in range(target_tour.max_tourist):
            nameid = "name" + str(i+1)
            if request.POST.get(nameid) != "":
                names.append(request.POST.get(nameid))
    curbooking = Order()
    curbooking.save()
    return render(request,  "bookings.html")
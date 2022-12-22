from django.shortcuts import render
from . models import *
from django.db.models import Q

# Create your views here.
def index(request):
    if request.method == 'POST':
        site = request.POST["site"]
        field = request.POST["field"]
        date = request.POST["date"]
        budget = request.POST["budget"]
        tours = Tour.objects.filter(Q(field__contains = field) & (
                                    Q(itinerary_plan__site1__name__contains = site) | 
                                    Q(itinerary_plan__site2__name__contains = site) | 
                                    Q(itinerary_plan__site3__name__contains = site) | 
                                    Q(itinerary_plan__site4__name__contains = site)) )
        if date != '':
            tours = tours.filter(Q(startDate__gte = date))  # tour start date >= input date
        if budget != '':
            tours = tours.filter(Q(price__lte = budget))   # tour price <= input budget
        return render(request, 'index.html',{'dests': tours})
    else:
        return render(request,'index.html')


def contact(request):
    return render(request, 'contact.html')



# def guide_check_schdule(request):
#     return render(request,  "guide-schedule.html")

# def guide_check_detail(request):
#     return render(request,  "guide-tour-detail.html")
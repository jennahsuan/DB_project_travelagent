from django.shortcuts import render
from . models import *
from django.db.models import Q, F, Count

# Create your views here.
def search_itinerary(request):
    if request.method == 'POST':
        site = request.POST["site"]
        tourists_count = request.POST["travelers"]
        date = request.POST["date"]
        budget = request.POST["budget"]
        tours = Tour.objects.filter(Q(field__contains = site) & (
                                    Q(itinerary_plan__site1__name__contains = site) | 
                                    Q(itinerary_plan__site2__name__contains = site) | 
                                    Q(itinerary_plan__site3__name__contains = site) | 
                                    Q(itinerary_plan__site4__name__contains = site)) )
        tours = tours.annotate(quota = Count(F('max_tourist') - F('total_tourist'))).filter(quota__gte = tourists_count)    # tour quota >= traveler count                   
        if date != '':
            tours = tours.filter(Q(startDate__gte = date))  # tour start date >= input date
        if budget != '':
            tours = tours.filter(Q(price__lte = budget))   # tour price <= input budget
        context = {
            'dests': tours, 
            # 'tourists_count':list(range(1, int(tourists_count)+1))
            'tourists_count':int(tourists_count)
        }
        return render(request, 'index.html', context)
    else:
        return render(request,'index.html')


def contact(request):
    return render(request, 'contact.html')



# def guide_check_schdule(request):
#     return render(request,  "guide-schedule.html")

# def guide_check_detail(request):
#     return render(request,  "guide-tour-detail.html")
from django.contrib.auth.decorators import login_required
from rest_framework.response import Response
from rest_framework import status
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

@login_required(login_url='login')
def book(request):
    if request.method == 'POST':
        target_tour = Tour.objects.get(id=request.POST.get("tourid"))
        unit_price = target_tour.price
        curuser = request.user
        curmember = Member.objects.get(user = curuser)
        tourists_count = request.POST.get("tourists_count")

        curOrder = Order(tour = target_tour, member = curmember, order_tourist_count = 1, order_price = unit_price)
        curOrder.save()
        for i in range(tourists_count):
            nameid = "name" + str(i+1)
            idid = "id" + str(i+1)
            foodid = "food" + str(i+1)
            diseaseid = "disease" + str(i+1)
            allergicid = "allergic" + str(i+1)
            if request.POST.get(nameid) != "":
                if request.POST.get(nameid) != None:
                    d = Tourist(order=curOrder, name=request.POST.get(nameid),
                                id=request.POST.get(idid),food_concern=request.POST.get(foodid),
                                disease=request.POST.get(diseaseid), allergic=request.POST.get(allergicid))
                    d.save()
        return render(request,  "book.html")
    else:
        return render(request,  "book.html")

# def add_tourist(request):
#     if request.method == 'POST':
#         target_order = Order.objects.get(id=request.POST.get("orderid"))
#         name = request.POST.get("name")
#         id = request.POST.get("id")
#         allergic = request.POST.get("allergic")
#         disease = request.POST.get("disease")
#         food_concern = request.POST.get("food_concern")
#         curtourist = Tourist(id = id, name = name, allergic = allergic, order = target_order,
#                              disease = disease, food_concern = food_concern)
#         curtourist.save()
#         return Response({"message": "good"}, status=status.HTTP_200_OK)
#     else:
#         return Response("Plz login", status=status.HTTP_400_BAD_REQUEST)
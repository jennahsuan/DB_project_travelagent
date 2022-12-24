from django.contrib.auth.decorators import login_required
# from rest_framework.response import Response
# from rest_framework import status
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
def book(request, tour_id, tourists_count):
    # print('tour id ', tour_id, ' count ',tourists_count)
    if not request.user.is_authenticated:  # 如果没登录就render登录页面
        return render(request, 'login.html')
    else:
        tourists_count = int(tourists_count)
        target_tour = Tour.objects.get(id=tour_id)
        unit_price = target_tour.price
        order_price = unit_price *tourists_count
        curuser = request.user
        curmember = Member.objects.get(user = curuser)

        if request.method == 'POST':
            curOrder = Order(tour = target_tour, member = curmember, 
                            order_tourist_count = tourists_count, order_price = order_price)
            curOrder.save()
            target_tour.total_tourist += tourists_count
            target_tour.save()

            for i in range(tourists_count):
                nameid = "name" + str(i+1)
                idid = "id" + str(i+1)
                foodid = "food" + str(i+1)
                diseaseid = "disease" + str(i+1)
                allergicid = "allergic" + str(i+1)
                # print(nameid, ' name ', request.POST[nameid], 'id ',request.POST[idid])
                d = Tourist(order=curOrder, name=request.POST[nameid],
                            id_card=request.POST[idid],food_concern=request.POST[foodid],
                            disease=request.POST[diseaseid], allergic=request.POST[allergicid])
                d.save()
        context = {'order_price': order_price,
                   'tour': target_tour,
                   'range': range(1,tourists_count+1)}
        return render(request,  "book.html", context)

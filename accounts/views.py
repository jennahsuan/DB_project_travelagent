from django.shortcuts import render, redirect
from django.contrib.auth.models import User, auth
from django.contrib import messages
from accounts.models import *
from .forms import *
# Create your views here.

# differnt account for members and employee:
# https://github.com/okanuregen/Django---Hotel-Management-System/blob/main/HMS/accounts/views.py


def login(request):
    
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']

        user = auth.authenticate(username=username, password=password)

        if user is not None:
            auth.login(request, user)
            return redirect("/")

        else:
            messages.info(request,'invalid credentials')
            return redirect('login')

    else:
        return render(request,'login.html')




def register(request):

    if request.method == 'POST':
        first_name = request.POST['first_name']
        last_name = request.POST['last_name']
        username = request.POST['username']
        password1 = request.POST['password1']
        password2 = request.POST['password2']
        email = request.POST['email']

        if password1 == password2:
            if User.objects.filter(username=username).exists():
                messages.info(request,'Username Taken')
                return redirect('register')

            else:
                user = User.objects.create_user(username=username, password=password1, email=email,first_name=first_name,last_name=last_name)
                user.save()
                phone = request.POST['phone']
                nation = request.POST['nation']
                gender = request.POST['gender']
                curGuest = Member(
                    # user=user, phone='0911111111',name = first_name, email=email, nation= 'Taiwan',gender='M')
                    user=user, phone=phone,name = username, email=email, nation= nation,gender=gender)
                curGuest.save()
                
                return redirect('login')   

            '''elif User.objects.filter(email=email).exists:
                messages.info(request,'Email Taken')
                return redirect('register')'''

        else:
            messages.info(request,'Passwords do not match')
            return redirect('register')

        return redirect('/')
    
    else:
        return render(request,'register.html')


def logout(request):
    auth.logout(request)
    return redirect("/")

def contact(request):
    return render(request, 'contact.html')


# def add_employee(request):
#     form = CreateUserForm()
#     form2 = CreateEmployeeForm()

#     if request.method == 'POST':
#         post = request.POST.copy()  # to make it mutable
#         # post['phoneNumber'] = "+90" + post['phoneNumber']
#         request.POST = post

#         form = CreateUserForm(request.POST)
#         form2 = CreateEmployeeForm(request.POST)

#         if form.is_valid() and form2.is_valid():
#             user = form.save()
#             employee = form2.save()
#             employee.user = user
#             employee.save()

#             username = form.cleaned_data.get('username')
#             # role = form2.cleaned_data.get("ROLES_TYPES")
#             # group = Group.objects.get(name=role)
#             # user.groups.add(group)

#             messages.success(
#                 request, ' Account Was Created Succesfuly For ' + username)

#             return redirect('employees')
#     context = {
#         'form': form,
#         'form2': form2,
#     }
#     return render(request, "add-employee.html", context)

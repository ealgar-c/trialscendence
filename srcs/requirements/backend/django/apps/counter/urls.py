from django.urls import path
from .views import buttonCount

urlpatterns = [
    path('click/', button_click, name='button_click'),
]
"""bookr URL Configuration"""
from django.contrib import admin
from django.urls import path
from django.urls.conf import include

import reviews.views

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', include('reviews.urls')),
]

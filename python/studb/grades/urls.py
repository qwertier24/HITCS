from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^index/$', views.index),
    url(r'^$', views.redirect_to_index),  # when coming up with illegal url, redirect to /grades/index
]

from django.conf.urls import url

from . import views

urlpatterns = [
    url(r'^index/$', views.index),
    url(r'^query_stu/$', views.query_stu),  # Query the score of one student
    url(r'^query_all/$', views.query_all),  # Query the score sheet sorted by some score
    url(r'^modify0/$', views.modify0),
    url(r'^modify1/$', views.modify1),
    url(r'^upload/$', views.upload),
    url(r'^help/$', views.help),
    url(r'^about/$', views.about),
    url(r'^stat/$', views.stat),
    url(r'^download/$', views.download),
    url(r'^$', views.redirect_to_index),  # when coming up with illegal url, redirect to /grades/index
]

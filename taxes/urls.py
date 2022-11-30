from django.urls import path
from .views import *



urlpatterns = [
    path('api/health-check/', health_check),
    path('api/report/<int:reportId>/', get_report_detail),
    path('api/report/list/', report_list),
]

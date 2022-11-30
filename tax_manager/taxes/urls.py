from django.urls import path
from .views import health_check, dummy_report_detail



urlpatterns = [
    path('api/health-check/', health_check),
    path('api/dummy-report-detail/<int:reportId>', dummy_report_detail),
]

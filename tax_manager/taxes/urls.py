from django.urls import path
from .views import health_check, dummy_report_detail



urlpatterns = [
    path('api/health-check/', views.health_check),
    path('api/dummy-report-detail/<int:reportId>', views.dummy_report_detail),
]

from django.urls import path
import views



urlpatterns = [
    path('api/health-check/', views.health_check),
    path('api/dummy-report-detail/<int:reportId>', views.dummy_report_detail),
]
from django.urls import path, include
from . import views
from rest_framework.routers import DefaultRouter

router = DefaultRouter()
router.register('api/report', views.TimeReportViewSet, basename="time-reports")

urlpatterns = [
    path('', include(router.urls)),
    path('api/health-check/', views.health_check),
]
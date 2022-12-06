from django_filters.rest_framework import FilterSet
from .models import TimeReport

class TimeReportFilter(FilterSet):
    class Meta:
        model = TimeReport
        fields = {
            'task_id': ['exact'],
            'reported_for': ['exact', 'gt', 'lt']
        }
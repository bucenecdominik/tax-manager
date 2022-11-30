from rest_framework import serializers
from rest_framework.serializers import ModelSerializer
from .models import TimeReport

class TimeReportSerializer(serializers.ModelSerializer):
    class Meta:
        model = TimeReport
        fields = (
            'id', 
            'minutes_spent', 
            'created_at', 
            'modified_at', 
            'reported_for', 
            'note',
            'status',
            )
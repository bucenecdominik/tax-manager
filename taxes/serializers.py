from rest_framework import serializers
from rest_framework.serializers import ModelSerializer
from .models import TimeReport, Task

class TaskSerializer(serializers.ModelSerializer):
    class Meta:
        model = Task
        fields = (
            'id',
            'custom_id',
            'name',
        )

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
            "task"
            )

    task = serializers.SerializerMethodField(method_name="get_task_object")

    def get_task_object(self, report: TimeReport):
        return TaskSerializer(report.task).data
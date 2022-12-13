from rest_framework import serializers
from rest_framework.serializers import ModelSerializer

from .models import TimeReport, Task, User

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
            "task",
            "user_id"
            )

    task = serializers.SerializerMethodField(method_name="get_task_object", read_only=True)

    def get_task_object(self, report: TimeReport):
        return TaskSerializer(report.task).data

    def get_user_id(self, report: TimeReport):
        return report.user.id

class TimeReportCreateSerializer(serializers.ModelSerializer):
    class Meta:
        model = TimeReport
        fields = (
            'id',
            'minutes_spent',
            'reported_for', 
            'note',
            'status',
            'task_custom_id',
            )
    
    task_custom_id = serializers.CharField()

    def create(self, validated_data):
        user = User.objects.get(auth_user_id = self.context['user_id'])
        task = Task.objects.filter(custom_id = validated_data['task_custom_id']).filter(user = user.id).first()
        
        report = TimeReport(**validated_data)
        report.user = user
        report.task = task
        report.save()
        return report
from rest_framework import serializers

class TimeReportSerializer(serializers.Serializer):
    id = serializers.IntegerField()
    minutes_spent = serializers.IntegerField()
    created_at = serializers.DateTimeField()
    modified_at = serializers.DateTimeField()
    reported_for = serializers.DateField()
    note = serializers.CharField()
    status = serializers.CharField(max_length=50)
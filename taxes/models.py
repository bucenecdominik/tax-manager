from django.db import models
from django.contrib.postgres.fields import DateRangeField

class Task(models.Model):
    name = models.CharField(max_length=255)
    custom_id = models.CharField(max_length=50)
    #money_made = minutes_spent * user.money_per_hour

class TimeReport(models.Model):
    class State(models.TextChoices):
        new = 'NEW'
        reported = 'REPORTED'
        processed = 'PROCESSED'
        deleted = 'DELETED'

    minutes_spent = models.PositiveIntegerField()
    task = models.ForeignKey(Task, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)
    modified_at = models.DateTimeField(auto_now=True)
    reported_for = models.DateField()
    note = models.TextField(null = True, blank=True)
    status = models.CharField(max_length=50, choices=State.choices, default=State.new)

class ReportSummary(models.Model):
    class State(models.TextChoices):
        new = 'NEW'
        approved = 'APPROVED'
        declined = 'DECLINED'

    name = models.CharField(max_length=255)
    time_reports = models.ManyToManyField(TimeReport)
    minutes_sum = models.PositiveIntegerField()
    date_range = DateRangeField()
    created_at = models.DateTimeField(auto_now_add=True)
    modified_at = models.DateTimeField(auto_now=True)
    note = models.TextField(null=True, blank=True)
    status = models.CharField(max_length = 50, choices=State.choices, default=State.new)

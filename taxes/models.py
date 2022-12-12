from django.db import models
from django.contrib.postgres.fields import DateRangeField
from tax_manager import settings

class User(models.Model):
    auth_user = models.OneToOneField(settings.AUTH_USER_MODEL, on_delete=models.PROTECT)

class Task(models.Model):
    name = models.CharField(max_length=255)
    custom_id = models.CharField(max_length=50)
    user = models.ForeignKey(User, on_delete=models.PROTECT)

    def __str__(self):
        return f'{self.custom_id} - {self.name}'

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
    user = models.ForeignKey(User, on_delete=models.PROTECT)

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
    user = models.ForeignKey(User, on_delete=models.PROTECT)

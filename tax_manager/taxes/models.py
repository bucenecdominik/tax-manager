from django.db import models

# Create your models here.


class Task(models.Model):
    name = models.models.CharField(max_length=50)
    custom_id = models.IntegerField()
    #money_made

class TimeReport(models.Model):
    minutes_spent = models.PositiveIntegerField()
    task_id = models.ForeignKey(Task.pk)
    created_at = models.DateField(auto_now_add=True)
    modified_at = models.DateField(auto_now_add=True)
    reported_for = models.DateField()
    note = models.TextField()



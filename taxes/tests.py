from datetime import date, datetime
from django.test import RequestFactory, TestCase
from .models import TimeReport, Task
from .serializers import TimeReportSerializer

class SimpleTestCase(TestCase):
    def test_simple_math(self):
        self.assertEqual(2, 1+1)

class HealthCheckTest(TestCase):
    def test_health_check(self):
        response = self.client.get('/api/health-check/')
        print(f'response: {response}')
        self.assertEqual(200, response.status_code)
        self.assertTrue(response.data.get('success'))


class TimeReportTest(TestCase):
    def test_getting_time_report_not_found(self):
        response = self.client.get('/api/report/5/')
        self.assertEqual(404, response.status_code)

    def test_getting_time_report_success(self):
        task = self.create_task("First task")
        report = self.create_time_report(task, 60 * 8, "First time report")

        response = self.client.get(f'/api/report/{report.pk}/')
        self.assertEqual(200, response.status_code)
        self.assertEqual(TimeReportSerializer(report).data, response.data)

    def test_listing_time_report_success(self):
        task = self.create_task("Second task")
        report = self.create_time_report(task, 60 * 8, "Time report2")
        report = self.create_time_report(task, 94832753, "Time report 5")
        report = self.create_time_report(task, 100, "Test1")
        report = self.create_time_report(task, round(10223 / 8), "gijdg")

        response = self.client.get(f'/api/report/')
        self.assertEqual(200, response.status_code)
        self.assertEqual(TimeReportSerializer(TimeReport.objects.all(), many = True).data, response.data.get('results'))

    def create_task(self, name):
        task = Task()
        task.name = name
        task.save()
        return task

    def create_time_report(self, task, minutes, note, reported_for=date.today()):
        report = TimeReport()
        report.minutes_spent = minutes
        report.reported_for = reported_for
        report.note = note
        report.task = task
        report.save()
        return report

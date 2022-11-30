from datetime import date, datetime
from django.test import RequestFactory, TestCase
from .models import TimeReport, Task
from .serializers import TimeReportSerializer

class SimpleTestCase(TestCase):

    def test_simple_math(self):
        self.assertEqual(2, 1+1)

    def test_getting_time_report_not_found(self):
        response = self.client.get('/api/dummy-report-detail/5')
        self.assertEqual(404, response.status_code)

    def test_getting_time_report_success(self):
        task = Task()
        task.name = "My first task"
        task.save()

        report = TimeReport()
        report.minutes_spent = 8 * 60
        report.reported_for = date.today()
        report.note = "Test report."
        report.task_id = task
        report.save()

        response = self.client.get('/api/dummy-report-detail/' + str(report.pk))
        self.assertEqual(200, response.status_code)
        self.assertEqual(TimeReportSerializer(report).data, response.data)
        
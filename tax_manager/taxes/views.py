from django.http import JsonResponse
from django.shortcuts import render, get_object_or_404
from django.views.generic import *
from rest_framework.decorators import api_view
from datetime import datetime
from datetime import date
from .models import TimeReport
from .serializers import TimeReportSerializer
from rest_framework.response import Response

@api_view()
def health_check(request):
    response = {
        'success': True,
        'timestamp': datetime.now(tz=None)
    }
    return Response(response)

@api_view()
def dummy_report_detail(request, reportId):
    report = get_object_or_404(TimeReport, pk=reportId)
    return Response(TimeReportSerializer(report).data)

from django.shortcuts import get_object_or_404
from django.views.generic import *
from rest_framework.decorators import api_view
from datetime import datetime
from rest_framework.viewsets import ModelViewSet
from .models import TimeReport, User
from .serializers import TimeReportSerializer
from .filters import TimeReportFilter
from rest_framework.response import Response
from rest_framework.exceptions import status
from rest_framework.pagination import LimitOffsetPagination
from rest_framework.permissions import IsAuthenticated
from django_filters.rest_framework import DjangoFilterBackend
from rest_framework.filters import SearchFilter, OrderingFilter
from core import models

@api_view()
def health_check(request):
    response = {
        'success': True,
        'timestamp': datetime.now(tz=None)
    }
    return Response(response)

class TimeReportViewSet(ModelViewSet):
    serializer_class = TimeReportSerializer
    filter_backends = [DjangoFilterBackend, SearchFilter, OrderingFilter]
    filterset_class = TimeReportFilter
    search_fields = ['note']
    ordering_fields = ['reported_for', 'id', 'created_at']
    pagination_class = LimitOffsetPagination
    permission_classes = [IsAuthenticated]

    def destroy(self, request, pk):
        item = get_object_or_404(TimeReport, pk=pk)
        item.status = TimeReport.State.deleted
        item.save()
        return Response(status=status.HTTP_200_OK)

    def get_queryset(self) -> str:
        user = self.request.user
        qs = TimeReport.objects.select_related("task").select_related("user")

        if user.is_staff:
            return qs.all()

        (user_id, create) = User.objects.only('id').get_or_create(user = user.id)
        return qs.filter(user = user_id).all()
    

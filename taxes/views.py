from django.shortcuts import get_object_or_404
from django.views.generic import *
from rest_framework.decorators import api_view
from datetime import datetime
from rest_framework.viewsets import ModelViewSet
from .models import TimeReport, User
from .serializers import TimeReportSerializer, TimeReportCreateSerializer
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
        item = self.get_queryset().filter(pk=pk).first()
        if item is None:
            return Response(f"No time report found for pk {pk}", status=status.HTTP_404_NOT_FOUND)
        item.status = TimeReport.State.deleted
        item.save()
        return Response(status=status.HTTP_200_OK)        

    def get_serializer_class(self):
        if self.request.method == 'POST':
            return TimeReportCreateSerializer
        return TimeReportSerializer

    def get_serializer_context(self):
        return {'user_id': self.request.user.id}

    def get_queryset(self):
        user = self.request.user
        qs = TimeReport.objects.select_related("task").select_related("user")

        if user.is_staff:
            return qs.all()

        (user_id, create) = User.objects.only('id').get_or_create(auth_user_id = user.id)
        return qs.filter(user = user_id).all()
    

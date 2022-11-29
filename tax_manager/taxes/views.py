from django.http import JsonResponse
from django.shortcuts import render
from django.views.generic import *
from datetime import datetime

def health_check(request):
    response = {
        'success': True,
        'timestamp': datetime.now(tz=None)
    }
    return JsonResponse(response)

class LoginView(View):

    def get(self, request):
        pass

    def post(self, request):
        pass

class RegisterView(CreateView):
    
    def get(self, request):
        pass

    def post(self, request):
        pass

class TaskCreateView(CreateView):
    pass

class TaskListView(ListView):
    def get_context_data(self, request):
        pass

    def get(self, request):
        pass

class TaskUpdateView(UpdateView):
    pass

class TaskDeleteView(DeleteView):
    pass



    



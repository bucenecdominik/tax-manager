from django.shortcuts import render
from django.views.generic import *

class IndexView(View):
    

    def get(self,request):
        pass

    def post(self,request):
        pass

class LoginView(View):
    

    def get(self,request):
        pass

    def post(self,request):
        pass

class RegisterView(CreateView):
    
    def get(self,request):
        pass

    def post(self,request):
        pass

class TaskCreateView(CreateView):
    #success_url = 'task_list'
    pass

class TaskListView(ListView):
    #template_name = 'tasks/task_list.html
    def get_context_data(self, request):
        pass

    def get(self, request):
        pass

class TaskUpdateView(UpdateView):
    #succes_url = 'task_list'
    pass

class TaskDeleteView(DeleteView):
    pass



    



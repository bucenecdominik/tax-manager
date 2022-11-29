from django.shortcuts import render
from django.views.generic import *

class IndexView(View):
    #template_name = 'index.html'

    def get(self,request):
        pass

    def post(self,request):
        pass

class LoginView(View):
    #template_name = 'auth/login.html'

    def get(self,request):
        pass

    def post(self,request):
        pass

class RegisterView(CreateView):
    #template_name = 'auth/register.html'
    #form = RegisterForm
    def get(self,request):
        pass

    def post(self,request):
        pass

class TaskCreateView(CreateView):
    #template_name = 'tasks/task_create.html'
    #form = TaskCreateForm
    #success_url = 'task_list'
    pass

class TaskListView(ListView):
    #template_name = 'tasks/task_list.html
    def get_context_data(self, request):
        pass

    def get(self, request):
        pass

class TaskUpdateView(UpdateView):
    #template_name = 'tasks/taks_update.html'
    #form = TaskUpdateForm
    #succes_url = 'task_list'
    pass

class TaskDeleteView(DeleteView):
    #template_name = 'tasks/task_delete.html'
    pass



    



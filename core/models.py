from django.db import models
from django.contrib.auth.models import AbstractUser

class AuthUser(AbstractUser):
    email = models.EmailField(unique=True)
    username = models.EmailField(unique=True)

    def __str__(self):
        return f"{self.first_name} {self.last_name}" 
    
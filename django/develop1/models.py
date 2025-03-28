from django.db import models


class UserTest(models.Model):
    user_id = models.CharField(max_length=100, unique=True)
    password = models.CharField(max_length=100)
    name = models.CharField(max_length=100)

    def __str__(self):
        return f"{self.name} ({self.user_id})"

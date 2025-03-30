from django.contrib import admin
from .models import UserTest

@admin.register(UserTest)
class UserTestAdmin(admin.ModelAdmin):
    list_display = ('user_id', 'password','name')
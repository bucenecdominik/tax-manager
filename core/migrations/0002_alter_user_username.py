# Generated by Django 4.1.3 on 2022-12-07 15:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('core', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='AuthUser',
            name='username',
            field=models.EmailField(max_length=254, unique=True),
        ),
    ]

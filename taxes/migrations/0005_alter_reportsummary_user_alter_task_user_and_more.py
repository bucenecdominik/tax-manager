# Generated by Django 4.1.3 on 2022-12-09 19:05

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('taxes', '0004_user'),
    ]

    operations = [
        migrations.AlterField(
            model_name='reportsummary',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='taxes.user'),
        ),
        migrations.AlterField(
            model_name='task',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='taxes.user'),
        ),
        migrations.AlterField(
            model_name='timereport',
            name='user',
            field=models.ForeignKey(on_delete=django.db.models.deletion.PROTECT, to='taxes.user'),
        ),
    ]

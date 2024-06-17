from django.db import models

# Create your models here.
class Click(models.Model):
	count = models.IntegerField(default=0)
	class Meta:
		db_table = 'counter_table'
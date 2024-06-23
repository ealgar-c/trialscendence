from django.db import models

class Click(models.Model):
    count = models.IntegerField(default=0)

    class Meta:
        db_table = 'counter_table'

    @classmethod
    def increment(cls):
        click, created = cls.objects.get(id=1)
        click.count += 1
        click.save()

from django.db import models

class Airplane(models.Model):
    name = models.CharField(max_length=40, verbose_name='Название Самолета')
    price = models.IntegerField(default=0, verbose_name='Цена')
    image = models.URLField(max_length=300,verbose_name='Ссылка на изображение самолета', default='')

    def __str__(self):
        return self.name

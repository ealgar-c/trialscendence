from django.shortcuts import render
from django.views.decorators.csrf import csrf_exempt
from .models import Click
# Create your views here.

def buttonCount(request):
	if request.method == 'GET':
		click, created = Click.objects.get_or_create(id=1)  # Usamos un solo registro para contar clics
		click.count += 1
		click.save()
		return JsonResponse({'status': 'success', 'count': click.count})
	return JsonResponse({'status': 'failed'}, status=400)

from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from .models import Click

@csrf_exempt
def buttonCount(request):
    if request.method == 'POST':
        Click.increment()
        return JsonResponse({'status': 'success'})
    return JsonResponse({'status': 'failed'}, status=400)

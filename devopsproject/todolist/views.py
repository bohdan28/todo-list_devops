from django.shortcuts import render, redirect
from .forms import InputForm
from .models import ItemModel

# Create your views here.
def index(request):
    tasks = ItemModel.objects.all()
    form = InputForm(request.POST or None)
    if request.method == "POST" and form.is_valid():
        form.save()
        return redirect('index')
    return render(request, 'index.html', {'tasks': tasks, 'form': form})
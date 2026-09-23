from django.shortcuts import render
from django.http import HttpResponse

# VIEWS -> retornam algo, são funções, request -> response
# View responsável pela tela inicial do médico
def medico_view(request):
    print('Página medico funcionou')
    return HttpResponse('Página inicial do Médico')

# View responsável pela tela home
def home(request):
    print('Página home funcionou')
    return HttpResponse('Página HOME')
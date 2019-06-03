import math
from django.shortcuts import render
from catalogapp.models import Airplane

def main(request):
    all_airplanes = Airplane.objects.all()
    rows =  math.ceil(len(all_airplanes)/4)
    airplanes = []
    for i in range(0, rows+1):
        airplane_sublist = []
        for j in range(0, 4):
            if (i*4+j) < len(all_airplanes):
                airplane_sublist.append(all_airplanes[i*4+j])
        airplanes.append(airplane_sublist)        
    return render(request, 'main.html', {'airplanes': airplanes})
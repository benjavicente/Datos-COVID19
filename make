#!/bin/bash

cd src

files=(
    reporteDiario.py
    Curvas_epi.py
    nuevaDefDefunciones.py
    paso_a_paso.py
    ISCI.py
    vacunacion.py
    informeEpidemiologico.py
)

for f in "${files[@]}"; do
    printf "Running ${f}...\n"
    python $f
    if [ ! "$?" -eq 0 ]; then
        printf "\nError in ${f}\n\n\n"
    fi
done

printf "\n\n\nDone!"

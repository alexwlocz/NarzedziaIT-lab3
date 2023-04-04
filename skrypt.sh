#!/bin/bash

#Wyświetlenie dzisiejszej daty po wpisadniu "skrypt.sh --date"

if [ "$1" = "--date" ]; then
    echo $(date +"%Y-%m-%d")
fi


#Tworzenie automatycznie 100 plików

if [ "$1" = "--logs" ]; then
    for i in {1..100}; do
        mkdir log$i
        echo "Nazwa pliku: log$i.txt" > ./log$i/log$i.txt
        echo "Nazwa skryptu: skrypt.sh" >> ./log$i/log$i.txt
        echo "Data utworzenia: $(date)" >> ./log$i/log$i.txt
    done
fi  

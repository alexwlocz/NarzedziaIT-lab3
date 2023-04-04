#!/bin/bash

#Wyświetlenie dzisiejszej daty po wpisadniu "skrypt.sh --date"

if [ "$1" = "--date" ]; then
    echo $(date +"%Y-%m-%d")
fi


#Tworzenie automatycznie 100 plików

if [ "$1" = "--logs" ] && [ "$2" = "" ]; then
    for i in {1..100}; do
        mkdir log$i
        echo "Nazwa pliku: log$i.txt" > ./log$i/log$i.txt
        echo "Nazwa skryptu: skrypt.sh" >> ./log$i/log$i.txt
        echo "Data utworzenia: $(date)" >> ./log$i/log$i.txt
    done

#Tworzenie i plików

elif [ "$1" = "--logs" ] && [ "$2" -gt 0 ] 2>/dev/null; then
    for ((i=1; i<=$2; i++)); do
        mkdir log$i
        echo "Nazwa pliku: log$i.txt" > ./log$i/log$i.txt
        echo "Nazwa skryptu: skrypt.sh" >> ./log$i/log$i.txt
        echo "Data utworzenia: $(date)" >> ./log$i/log$i.txt
    done
fi  

#Skrypt wyświetlający wszystkie dostępne opcje

help=$(git --help)

if [ "$1" = "--help" ]; then
    echo $help
fi

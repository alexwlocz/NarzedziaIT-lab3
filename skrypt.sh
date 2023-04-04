#!/bin/bash

#Wyświetlenie dzisiejszej daty po wpisadniu "skrypt.sh --date"

if [ "$1" = "--date" ]; then
    echo $(date +"%Y-%m-%d")
fi

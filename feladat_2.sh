# 2. Sorok számolása több fájlban
# Kérdés:
# Kérjen be több fájlnevet, majd írja ki külön-külön, hogy hány sor van bennük.

#!/bin/bash

read -p "Hany filet karsz beolvasni " ncounter

for (( i=1; i<=$ncounter; i++ ))
do  
    read -p "A file neve: " filenev

    if [ -e "$filenev" ]
    then
        sorokszama=$(cat "$filenev" | wc -l)
        echo "Sorok szama a $sorokszama"
    fi
done

# read -p: p mint promp 
# if [ -e "$filenev" ]: -e exist
# sorokszama=$(cat "$filenev" | wc -l): cat kírat, wc word count megszámolja a karaktereket, -l soronként 

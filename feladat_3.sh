# 3. Fájl létezésének és jogosultságainak ellenőrzése
# Kérdés:
# Írj scriptet, amely ellenőrzi, hogy egy fájl létezik-e, és hogy olvasható, írható vagy futtatható-e.

#!/bin/bash

read -p "Adj egy file nevek " filenev

if [ -e "$filenev" ]
then 
    echo "a file letezik"
    if [ -r "$filenev" ]
    then 
        echo "Olvashato"
    fi

    if [ -w "$filenev" ]
    then 
        echo "Irhato"
    fi

    if [ -x "$filenev" ]
    then 
        echo "Futattathoato" 
    fi
else 
    echo "Nem letezik"
fi
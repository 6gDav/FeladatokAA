# 5. Fájlok másolása méret alapján
# Kérdés:
# Másolja át azokat a fájlokat egy másik mappába, amelyek mérete nagyobb egy megadott értéknél.

#!/bin/bash

read -p "Adj egy kilobite szam ot " szam

convertedkszam=$((szam * 1024))

for el in *
do
    if [ -f "$el" ]
    then
        size=$(wc -c < "$el")
        if [ "$size" -ge "$convertedkszam" ]
        then    
            cp -p "$el" celmappa5/
        fi
    fi
done
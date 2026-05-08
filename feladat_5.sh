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

# for el in *: foreach itt a jelenlegi mappában a * olyasmi mint rm -r(i) * nél tehát minden
# if [ -f "$el" ]: -c megnézi hogy file e
# size=$(wc -c < "$el"): wc karakterek, -c bájtok ban, 
# < át irányítás a file ra hogy ne a nevét adja vissza hanem csak a számot
# cp -p "$el" celmappa5/: cp (copy), -p (--preserve) a file megorzi a meta adatit pl jogusultságok stb

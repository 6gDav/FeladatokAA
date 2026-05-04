# 4. Szavak listázása ábécé sorrendben
# Kérdés:
# Egy szövegfájlból írja ki az összes szót ábécé sorrendben, ismétlődések nélkül.

#!/bin/bash

read -p "Adj egy zsoveges filet " filenev

if [[ "$filenev" == *.txt ]]
then 
    cat "$filenev" | tr -s '[:space:]' '\n' | sort | uniq
fi
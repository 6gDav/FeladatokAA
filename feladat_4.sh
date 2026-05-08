# 4. Szavak listázása ábécé sorrendben
# Kérdés:
# Egy szövegfájlból írja ki az összes szót ábécé sorrendben, ismétlődések nélkül.

#!/bin/bash

read -p "Adj egy zsoveges filet " filenev

if [[ "$filenev" == *.txt ]]
then 
    cat "$filenev" | tr -s ' ' '\n' | sort | uniq
fi

# if [[ "$filenev" == *.txt ]]: a file kiterjesztését vizsgálja
# cat "$filenev" | tr -s ' ' '\n' | sort | uniq: tr, translate, -s squeeze-repeats ismétlödo karakterket tomorit, 
# a második karakter a helyettesítés, sort rendezi, uniq kiszűri az ismétlödo karakterket

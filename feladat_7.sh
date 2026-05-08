# 7. Egyszerű naplózás (logging)
# Kérdés:
# Írj scriptet, amely minden futtatáskor hozzáfűzi az aktuális dátumot és egy üzenetet egy log.txt fájlhoz.

#!/bin/bash

file_name="log.txt"
datum=$(date)

if [ -e $file_name ]
then
    echo "$datum" >> $file_name  
else
    touch $file_name
    echo "$datum" > $file_name 
fi

# datum=$(date): date: datum
# if [ -e $file_name ]: -e exist
# echo "$datum" >> $file_name: >> nem ir felul csak bele ir
# touch $file_name: touch letrehoz
# echo "$datum" > $file_name: > deklarál
# 6. Folyamat keresése név alapján
# Kérdés:
# Írj scriptet, amely megkeresi, hogy fut-e egy adott nevű folyamat, és kiírja az azonosítóját (PID).

#!/bin/bash

read -p "Adj egy folyamat neve: " process_name
pid=$(pgrep "$process_name")

if [ -z $pid ]
then 
    echo "Folyamat nem fut"
else 
    echo "Folyamat id ja $pid"
fi


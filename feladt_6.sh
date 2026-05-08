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

# pid=$(pgrep "$process_name"): ps + grep megkeresi, vissza adja a process id ját
# {
#     hoszabban a pgrep rol:
#         pgrep ...: kilistizza a PID kat
#         pgrep -l ...: folyamt neve meg ezek
#         pgrep -u ...: adott user alatal futatott cuccok
#         pgrep -c ...: count a talalatok szam
#         pgrep -x ...: pontos egyezést keres
# }
# if [ -z $pid ]: -z az ures cuccot vizsgalja ha igaz akkor ures
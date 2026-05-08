# 8. Fájlok számolása alkönyvtárakkal együtt
# Kérdés:
# Számolja meg, hány fájl található egy mappában, beleértve az összes alkönyvtárat is.


#!/bin/bah

mappaszam=$(tree | wc -l)

echo "Ebben a mappaben $mappaszam cucc talalhato"
# 8. Fájlok számolása alkönyvtárakkal együtt
# Kérdés:
# Számolja meg, hány fájl található egy mappában, beleértve az összes alkönyvtárat is.


#!/bin/bah

mappaszam=$(tree | wc -l)

echo "Ebben a mappaben $mappaszam cucc talalhato"

# mappaszam=$(tree | wc -l): tree: a fája a cucc nak ahol vagy, wc (world count) a szavak száma, -l soronként
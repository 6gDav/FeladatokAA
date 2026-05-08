# Apró Anikó Operációs Rendszerek Gyakorilati Feladatoatok

Link a feladatokhoz: <br>
https://docs.google.com/document/d/1DqK5edgEavFPMD04XHMDE5ZsJxl7eYxrBaF96IJjHjg/edit?tab=t.0

# Hogyan használd

Töltsd le ezen a linken keresztűl:
```
    git clone https://github.com/6gDav/FeladatokAA.git
```

## Hogyan futtasd

Interpreter el:
```
    bash fileneve
```

Vagy

```
    chmod +x fileneve
```
```
    ./fileneve
```

# Fontosabb if es lekérdezések

## Fájlrendszerrel kapcsolatos
    -e: Létezik -e
    -f: Létezik -e és file -e.
    -d: Létezik és is könyvtár.
    -s: Létezik -e és nem üres.

    -r: Olvasható.
    -w: Írható.
    -x: Futtatható.

    -L: A fájl egy szimbolikus link.

## Szöveges
    -z: A szöveg üres.
    -n: A szövegben van valami.
    ==/=: 2 szöveg egyezik -e.
    !=: nem egyezik.

## Számok 
    -eq: (Equal) egyenlő.
    -ne: (Not Equal) nem egyenlő.
    -lt: (Less Than) kisebb.
    -le (Less or Equal) kisebb egyenlő.
    -gt: (Greater Than) nagyobb.
    -ge: (Greater or Equal) nagyobb vagy egyenlő.

## Logikai
    !: Negáció.
    -a: Ugyan az mint a && (és).
    -o: Ugyan az mint a || (vagy).

## Szintaxis
    Egy if mögött lehet több [] is csak akkor kell a logikai operátor 
    vagy
    [[]] két zárójel egyben.
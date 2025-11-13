#1/bin/bash
#zmienna p = podany pierwszy argument
p="${1:-}"
#sprawdza czy to co podalismy (argument) jest istniejacym katalogiem
#jesli to prawda sortuje i podaje najwieksze 5 katalogow i date
if [-d "$p" ] ; then
date -Is
du -h "$p" | sort -hr | head -5
exit 0
else
#jesli nie istnieje to wypisuje ten fakt
echo "Katalog $p nie istnieje">&2
exit 1
fi

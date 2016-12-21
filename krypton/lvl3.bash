# on travaille dans notre dossier
mktemp -d
cd
ln -s /krypton/krypton3/found1 found1
ln -s /krypton/krypton3/found2 found2
ln -s /krypton/krypton3/found3 found3
# on affiche le nombre d'occurrences de chaque lettre
alph="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
for((i=0 ; i<26 ; i++)); do exec cat found1 found2 found3|grep -o "${alph:$i:1}" |wc -c; done
110
492
56
...
# idem avec du left 0-padding
for((i=0 ; i<26 ; i++)); do exec cat found1 found2 found3|grep -o "${alph:$i:1}" |wc -c | xargs printf "%03d " ; done
110
492
056
# idem avec la lettre après
for((i=0 ; i<26 ; i++)); do exec cat found1 found2 found3|grep -o "${alph:$i:1}" |wc -c | xargs printf "%03d " && echo "${alph:$i:1}" ; done > freq
110 A
492 B
454 C
420 D
# on trie
sort -r freq > freqOK
# on obtient
912 S
680 Q
602 J
514 U
492 B
480 N
# ya plus qu'à comparer avec wikipedia https://en.wikipedia.org/wiki/Letter_frequency

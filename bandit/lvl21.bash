# on va avoir besoin de 2 shells,
# le plus simple est de splitter le terminal avec tmux
tmux
# split vertical
Ctrl B puis %
# split horizontal
Ctrl B puis \"
# shell 1, on ouvre une socket sur le port 123
$1 nc -l 123
# shell 2, on lance le binaire avec le même port
$2 ./suconnect 123
# shell 1, on envoie le mdp
$1 GbKksEFF4yrVs6il55v6gwY5aVje5f0j
# on reçoit le mdp
gE269g2h3mw3pwgrj0Ha9Uoqen1c9DGr

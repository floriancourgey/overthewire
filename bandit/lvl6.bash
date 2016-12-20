# idem que précédent :
ll / -R | grep 'bandit7 bandit6'
# on trouve bien un fichier 'bandit7.password' mais on a pas le dossier
# on voit qu'il se situe entre /var/lib et /var/mysql
ll /var/ -R | grep 'bandit7 bandit6\|/var/'
# nous donne le dossier /var/lib/dpkg/info
cat /var/lib/dpkg/info/bandit7.password
HKBPTKQnIay4Fw76bEy8PVxKEDQRKTzs

# liste les ports entre 31000 et 32999
netstat -plnt | grep -E ':3[1-2][0-9]{3}' | sort
# output
tcp        0      0 0.0.0.0:31046           0.0.0.0:*               LISTEN      - pas de ssl
tcp        0      0 0.0.0.0:31518           0.0.0.0:*               LISTEN      - SSL
tcp        0      0 0.0.0.0:31691           0.0.0.0:*               LISTEN      - pas de ssl
tcp        0      0 0.0.0.0:31790           0.0.0.0:*               LISTEN      -
tcp        0      0 0.0.0.0:31960           0.0.0.0:*               LISTEN      -
# on a donc les ports
31046
31518
31691
31790
31960
# on se connecte en SSL à chacun
# on trouve que 31518 est SSL OK mais renvoie ce qu'on lui dit
# on trouve que 31790 fonctionne, il répond une private key (I)
openssl s_client -connect localhost:31790 -ssl3
# ya plus qu'à se connecter
mkdir /tmp/5748657454645
cd /tmp/5748657454645
touch private_key
chmod 600 private_key
vim private_key
# on copie colle le contenu (I)
ssh -i private_key bandit17@localhost


cluFn7wTiGryunymYOu4RcffSxQluehd

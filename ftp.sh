#!/bin/sh
HOST='172.18.70.81 21'
USER='bnbsking'
PASSWD="$1"
FILE='firstFTP.txt'

ftp -n $HOST <<END_SCRIPT
quote USER $USER
quote PASS $PASSWD
get $FILE
quit
END_SCRIPT
exit 0

#ftp 172.18.70.81 21
#get firstFTP.txt

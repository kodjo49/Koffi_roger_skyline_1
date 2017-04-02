#!/bin/bash

LOGFILE=/var/log/surveiller_script.log
sudo touch $LOGFILE
sudo chmod 777 $LOGFILE

croncmd="/surveiller_script.sh >> $LOGFILE"
cronjob="00 00 * * * $croncmd"

crontab -l | grep -v -F "$croncmd" ; echo "$cronjob" | crontab -


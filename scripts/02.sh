#!/bin/bash

LOGFILE=/var/log/update_script.log
sudo touch $LOGFILE
sudo chmod 777 $LOGFILE

croncmd="/update_script.sh >> $LOGFILE"
cronjob="00 04 * * * $croncmd"

crontab -l | grep -v -F "$croncmd" ; echo "$cronjob" | crontab -


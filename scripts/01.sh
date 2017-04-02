#!/bin/bash

while IFS=: read -r f1 f2 f3 f4 f5 f6 f7
do 
 echo "Login : $f1"
 echo "UID : $f3"
 echo "Path : $f6"
 echo "------------------------------------------------"
done < /etc/passwd

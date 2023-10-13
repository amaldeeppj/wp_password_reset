#!/bin/bash

for username in $( wp user list --field=user_login --role=administrator)
do
pass=$(tr -dc 'A-Za-z0-9!#$%&\*+-/<=>?@[\]^{|}~' </dev/urandom | head -c 16  ; echo) ;
echo -e "Username: $username  \t| Password: $pass" ;
wp user update $username --user_pass=$pass ;
done
#!/bin/bash

username="$1"
#sudo ldapsearch -H ldaps://ldap.16.nasa -D "cn=admin,dc=16,dc=nasa" -w ABCD1234efgh -b "uid=$username,dc=16,dc=nasa" sshPublicKey | grep sshPublicKey | cut -d ' ' -f 2-
sudo ldapsearch -H ldaps://ldap.16.nasa -D "cn=admin,dc=16,dc=nasa" -w ABCD1234efgh -b "uid=$username,ou=People,dc=16,dc=nasa" sshPublicKey | grep sshPublicKey: | cut -d ' ' -f 2-

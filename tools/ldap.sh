# basic search reuturns the mail of alice
ldapsearch -x -H ldaps://ldap.mycompany.com -b "dc=mycompany,dc=com" "(uid=alice)" mail

# search with base DN and specified CA certficate
env LDAPTLS_REQCERT=allow LDAPTLS_CACERT=/home/me/ldap_ca.pem \
ldapsearch -H ldaps://ldap.mycompany.com:636 -D "CN=Alice" -W -b "OU=emea,OU=Region,DC=ldap,DC=mycompany,DC=com"

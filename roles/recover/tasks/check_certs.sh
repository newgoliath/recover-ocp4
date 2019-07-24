MASTER_API=$(oc status | awk -F"//" '/on server https/ {print $2}' )
echo $MASTER_API
openssl s_client -connect $MASTER_API.stdout | openssl x509 -noout -dates


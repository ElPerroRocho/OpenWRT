#Loggt die Aktuelle WAN-IP 
addr=$(ifconfig |grep wan -A 1 |grep inet)
echo "`date` $addr" >> /usr/scripts/iplog.txt

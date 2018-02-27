#!/bin/sh
#ping google servers to check if router is online and do some stuff afterwards
IP=8.8.8.8
LOG="/etc/openvpn/log_online.log"
LOG_FAIL="/etc/openvpn/log_offline.log"
HIDE_RUNS=false
DEV="tun0"

t=$(ping -c 3 8.8.8.8 | grep -o -E '\d+ packets r' | grep -o -E '\d+')
  if [ $t -eq 0 ]
   then
     echo "`date` - OpenVPN is up, but I CAN'T PING THROUGH IT. RESTARTING OPENVPN, Logging WAN-IP" >> $LOG_FAIL
     echo "OpenVPN wurde hiernach neugestartet" >> /usr/scripts/iplog.txt
     /usr/scripts/wan_ip_log.sh
     /etc/init.d/openvpn stop
     sleep 5
     /etc/init.d/openvpn start
   else
     echo "`date` - OpenVPN is up and I can ping through it." > $LOG
  fi


#!/bin/bash

TOTAL=$(free -h | grep Mem | awk '{printf $2}' | cut -c1-3)
USED=$(free -h | grep Mem | awk '{printf $3}' | cut -c1-2)
USAGE=$(printf %.2f $(echo "100*$USED/$TOTAL" | bc -l))
IP=$(ip addr | grep  -v host | grep "inet " | awk '{print $2}' | cut -d"/" -f 1)
MAC=$(ip addr | grep  -v host | grep link/ether | awk '{print $2}' | cut -d"/" -f 1)
LVM=$(lsblk | awk '/root/ {print $6}')
DU=$(df --total | grep total | awk '{print $3}')
DUSED=$(printf %d $(echo $DU/1024 | bc))
DTOTAL=$(df --total -h | grep total | awk '{print $2}')
DUSAGE=$(df --total | grep total | awk '{print $5}')
CUSAGE=$(top -bn1 | grep Cpu | awk '{printf("%.1f%%", $2 + $4)}')
echo "#Architecture: "$(uname --all)
echo "#CPU physical : "$(nproc)
echo "#vCPU : "$(cat /proc/cpuinfo | grep processor | wc -l)
echo "#Memory Usage: "$USED/${TOTAL}MB '('$USAGE%')'
echo "#Disk Usage: "$DUSED/${DTOTAL}b '('$DUSAGE')'
echo "#CPU load: $CUSAGE"
echo "#Last boot: "$(who -b | awk '{print $3" "$4}')
echo "#LVM use: "$(if [ ${LVM} = "lvm" ];
then
	echo "yes"
else
	echo "no"
fi)
echo "#Connexions TCP : "$(ss | grep tcp | wc -l) ESTABLISHED
echo "#User log: "$(who | awk '{print $1}' | uniq | wc -l)
echo "#Network: IP "${IP} "($MAC)"
echo "#Sudo : "$(cat /var/log/sudo/sudolog | grep COMMAND | wc -l) cmd

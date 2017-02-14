#!/bin/bash

cas=`date +%T`
echo "Aktuální čas:" $cas

ip=`ifconfig | grep Všesměr | awk -F ":" '{print $2}'| awk -F " " '{print $1}'`
echo "Moje ip:" $ip

rx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $2}' | awk -F ")" '{print $1}'`
echo "Přijatá data:" $rx

tx=`ifconfig eth0 | grep Přijato | awk -F "(" '{print $3}' | awk -F ")" '{print $1}'`
echo "Odeslaná data:" $tx

echo "<html>" > kurka.html
echo "<body>" >> kurka.html
echo $cas >> kurka.html
echo "<br>" >> kurka.html
echo $ip >> kurka.html
echo "<br>" >> kurka.html
echo $rx >> kurka.html
echo "<br>" >> kurka.html
echo $tx >> kurka.html
echo "</body>" >> kurka.html
echo "</html>" >> kurka.html

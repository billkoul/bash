#!/bin/bash

trigger=1.00

load=`/bin/cat /proc/loadavg | /usr/bin/awk '{print $1}'`
response=`echo | /usr/bin/awk -v T=$trigger -v L=$load 'BEGIN{if ( L > T){ print "greater"}}'`
if [[ $response = "greater" ]]
then
echo $load | /usr/bin/mail -s"High load on GW4 - [ $load ]" example@email.com
fi

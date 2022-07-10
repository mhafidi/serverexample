#!/bin/bash
x=20
while :
do
 sleep 1
 x=$((x-1))
 if [ $x -eq 0 ]; then
    java -jar /example/server.jar 44 &
    ps --no-headers -Zp $! | awk '{print $1}'
 fi
done

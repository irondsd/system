#!/bin/bash
# irondsd
# 24 Aug 2020

HOST="8.8.8.8"
ping -c 1 $HOST > /dev/null
if [ "$?" -eq "0" ]; then
    echo online; exit 0
else 
    echo offline; exit 1
fi
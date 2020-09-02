#!/bin/bash
# irondsd
# 24 Aug 2020
# requires maclight
# https://github.com/busyloop/maclight

function printHelp {
    echo Welcome to Caps Lock Light.
    echo The only arguments are on and off, which turn Caps Lock LED respectively on or off.
    echo Happy usage!
}

if [ -z $1 ]; then
    printHelp
    exit 0
elif [ $1 = "--help" ]; then
    printHelp
    exit 0
elif [ $1 = "-h" ]; then
    printHelp
    exit 0
elif [ $1 = "on" ]; then
    echo lights on
    maclight keyboard set -a 1
    exit 0
elif [ $1 = "off" ]; then
    echo lights off
    maclight keyboard set -a 0
    exit 0
else 
    printHelp
    exit 1
fi
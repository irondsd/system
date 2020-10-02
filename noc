#!/bin/bash
# irondsd
# 26 Aug 2020
# notify on connection
# program runs until connection appears, then plays the sound and stops

while ! ping -c1 '8.8.8.8' &> /dev/null
        do sleep 1
done
echo "online"
osascript -e "display notification \"Connection restored\" with title \"Terminal\" sound name \"Glass\""
exit 0
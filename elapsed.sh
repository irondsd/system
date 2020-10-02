#!/bin/bash
###############
# 23 Sep 2020 #
# irondsd #####
###############

execTime=$1

hours=`expr $execTime / 60 / 60`
minutes=`expr $execTime / 60 % 60`
seconds=`expr $execTime % 60`

elapsedTime=""

function printHours() {
    hours=$1

    if [[ $hours = 1 ]]; then
        elapsedTime="${hours} hour"
    else
        elapsedTime="${hours} hours"
    fi
}

function printMinutes() {
    minutes=$1

    if [[ $minutes = 1 ]]; then
        elapsedTime="${elapsedTime}${minutes} minute"
    else
        elapsedTime="${elapsedTime}${minutes} minutes"
    fi
}

function printSeconds() {
    seconds=$1

    if [[ $seconds = 1 ]]; then
        elapsedTime="${elapsedTime}${seconds} second"
    else
        elapsedTime="${elapsedTime}${seconds} seconds"
    fi
}

function addAnd() {
    elapsedTime="${elapsedTime} and "
}

if [[ $hours > 0 ]]; then
    printHours $hours
    addAnd
    printMinutes $minutes
elif [[ $minutes > 0 ]]; then
    if [[ $minutes > 30 ]]; then
        printMinutes $minutes
    else
        if [[ $seconds > 0 ]]; then
            printMinutes $minutes
            addAnd
            printSeconds $seconds
        else
            printMinutes $minutes
        fi
    fi
else
    printSeconds $seconds
fi

printf "$elapsedTime"
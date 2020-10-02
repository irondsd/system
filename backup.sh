#!/bin/bash
#############################
# irondsd
# 20 Sep 2020
# backup utility
#############################
# TODO: Set drive id or remove variable

# const
driveName="argenti"
drivePath="/volumes/$driveName"
driveId="disk3"

# prints colored text
print() {
    if [ "$2" == "bold" ] ; then
        COLOR="1m"
    elif [ "$2" == "success" ] ; then
        COLOR="92m"
    elif [ "$2" == "normal" ] ; then
        COLOR="0m"
    elif [ "$2" == "warning" ] ; then
        COLOR="93m"
    elif [ "$2" == "danger" ] ; then
        COLOR="91m"
    else #default color
        COLOR="0m"
    fi

    STARTCOLOR="\e[$COLOR"
    ENDCOLOR="\e[0m"

    printf "$STARTCOLOR%b$ENDCOLOR" "$1"
}

# check if drive is there
function detectDrive() {
    mounted=$(mount | grep $driveName)
    if [[ $mounted == *$driveName* ]]; then 
        print "🌍 Drive deteted\n" "success" 
    else
        print "⚠️  Drive not detected!\n\n" "warning"
        print "Exiting...\n" "normal"
        exit 1
    fi
    # todo: set drive id here
}

# copy files into drive path
function copy() {
    print "Copying: $1" "normal"
    localStart=`date +%s`
    cp -pRfa ~/$1 "$drivePath/"
    localEnd=`date +%s`
    localExecTime=`expr $localEnd - $localStart`

    len=${#1}
    tabs=$(if [[ $len > 5 ]]; then echo "\t"; else echo "\t\t"; fi)

    print "$tabs ✅ Success! " "success"
    elapsed=`./elapsed.sh $localExecTime`
    printf "\t after $elapsed\n" "normal"
}

# prints finishing data
function OnFinish() {
    endTime=`date +%s`
    execTime=`expr $endTime - $startTime`
    execTime=`./elapsed.sh $execTime`
    print "\n\n🏁Finishing" "normal"
    print " after $execTime" "normal"
    print "\n" "normal"
    date=`date`
    ./not "Backup completed" "Backup finished on date"
    echo "Backup successful: $(date)" >> "$drivePath/backup.txt"
    exit 0
}

startTime=`date +%s`
echo `date`
print "Starting backup\n\n" "normal"

# detectDrive
copy "bin"
copy "documents"
copy "music"
copy "dev"
copy "pictures"
OnFinish
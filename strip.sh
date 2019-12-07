#!/bin/bash
# irondsd
# 6 Dec 2019
# requires imagemagick 
# brew install imagemagick

CWD="$(pwd)"

#find $CWD -type f -name '*.jpg' |\
find $CWD -type f \( -iname "*.jpg" -or -iname "*.jpeg" -or -iname "*.png" -or -iname "*.bmp" -or -iname "*.gif" \) |\
  while read FILENAME
  do
    mogrify -strip "${FILENAME}"
    echo ${FILENAME} " done"
  done

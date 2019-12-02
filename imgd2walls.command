#!/usr/local/bin/python3
# irondsd
# Moves images from Downloads to Wallpapers
# 9 Dec 2018
import os

downloads = os.path.expanduser('~/Downloads/')
wallpapers = os.path.expanduser('~/Pictures/Wallpapers/')

for root, dirs, files in os.walk(downloads):
    for filename in files:
        if filename.endswith('.jpg') or filename.endswith('.png'):
            os.rename(downloads + filename, wallpapers + filename)
            print('Moved', filename)

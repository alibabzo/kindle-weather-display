#!/bin/sh

cd "$(dirname "$0")"

python2.7 weather-script.py
convert weather-script-output.svg weather-script-uncompressed.png
pngcrush -c 0 weather-script-uncompressed.png  weather-script-output.png
cp -f weather-script-output.png /var/www/kindle/weather-script-output.png 

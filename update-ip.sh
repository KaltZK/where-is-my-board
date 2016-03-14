#!/usr/bin/env sh
addr=$(LANG=en_US.ASCII ifconfig wlan1 | grep 'inet addr:' | cut -d: -f2 | awk '{ print $1}')
echo "<h1>Board's IP: $addr</h1>" > index.html
git add .
git commit -m "$(date)"
git push origin gh-pages 

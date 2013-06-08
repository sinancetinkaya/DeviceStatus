DeviceStatus
============

Source files are from XXDME1

Installation:

You need to compile Classes.dex for each apk

E.g. for SecSettings.apk
Download (or clone) SecSettings folder from here

  java -Xmx1024M -jar smali-1.4.2.jar -a 16 SecSettings -o classes.dex
  
Then add classes.dex into SecSettings.apk

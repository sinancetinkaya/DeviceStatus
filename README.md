DeviceStatus
============

Source files are from XXDME1

Installation:

You need to compile Classes.dex for each apk

E.g. for SecSettings.apk

1. I'm assuming Java JDK or JRE installed on yout PC

2. Download smali-1.4.2.jar from apktool project page

3. Download this repo (ZIP button)

4. Extract SecSettings folder from the ZIP file

5. Type this command 

  java -Xmx1024M -jar smali-1.4.2.jar -a 16 SecSettings -o classes.dex
  
6. Add compiled classes.dex file into SecSettings.apk

After you modify all apks, you should delete SysScope.apk and EdmSysScopeService.apk

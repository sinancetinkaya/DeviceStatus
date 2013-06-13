DeviceStatus
============

Source files are from XXDME1

Installation:

NOTE - this process applies ONLY to those using N7100 running XXDME1. It may in fact work on other models/builds, but the information here was completely based on that build and therefore the below installation method is only recommended for users with the same model/build. If you do not fall into that category there is a good chance things will NOT work as expected - you have been warned :)

For N7100 XXDME1 users -
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

===========================
For those on other variants of the Note II, you can use the changes done here as a template to modify your own build/model-specific files.

To get at your own files in a format similar to that seen here, do the following:

1. You will need to be DEODEXED - this GREATLY simplifies things
2. I'm assuming Java JDK or JRE installed on yout PC
3. Open up the .apk you are trying to modify (it's just a glorified compressed file, so 7zip/winzip/insert-compression-utility-here should work) and pull out the classes.dex
4. Download baksmali-1.4.2.jar from apktool project page
5. Type some variant of this command
   
   java -jar baksmali-1.4.2.jar -a 16 -o /path/to/whereyouwantstuffdecompiledto/ classes.dex

   At this point things should look to be in a similar format as what you see in this repo

This puts you right before step 5 of the above instructions :)

Once you are to that point you can use the information here to see where things were changed and use that as a means to replicate the changes in your own files. Things may not match exactly (they may though as well), so you will have to be mindful of what you are changing and why.
IN PARTICULAR - there are a few places where methods were altered and resource ids were changed (not many places, but a few). These may be the same for you, but you should not assume so. A few notes on this:

- The resource ids that were changed will all have a const call associated with them in the format 0x7f###### (obviously the #s will be numbers).
- These changes were all related to strings - specifically ones that indicate the system is not modified
- These strings can be found in /res/values/strings.xml and their resource ids can be found in /res/values/public.xml of the apk you are modifying
- THIS MEANS YOU NEED TO FULLY DECOMPILE THE APK TO CHECK VIEW THE /RES/VALUES/ DIRECTORY (using apktool.jar or some front-end UI interface that does the same)
- It's recommended that you still use smali to recompile classes.dex using smali - the apktool-based decompile is simply for resource id verification

GOOD LUCK!

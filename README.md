# xcode-appicons
Generate Xcode AppIcons for Mac OS X applications.

The generate_appicons.sh script uses the standard Mac OS X command line tool 'sips' to scale a given icon into the sizes required by an OS X application.

Example of usage:

```
Henriks-iMac:xcode-appicons rtlheli$ ./generate_appicons.sh icon.png 
/Volumes/Users/rtlheli/Projects/xcode-appicons/icon.png
  /Volumes/Users/rtlheli/Projects/xcode-appicons/icon-16x16.png
/Volumes/Users/rtlheli/Projects/xcode-appicons/icon.png
  /Volumes/Users/rtlheli/Projects/xcode-appicons/icon-16x16@2x.png
/Volumes/Users/rtlheli/Projects/xcode-appicons/icon.png
  /Volumes/Users/rtlheli/Projects/xcode-appicons/icon-32x32.png
/Volumes/Users/rtlheli/Projects/xcode-appicons/icon.png
  /Volumes/Users/rtlheli/Projects/xcode-appicons/icon-32x32@2x.png
/Volumes/Users/rtlheli/Projects/xcode-appicons/icon.png
  /Volumes/Users/rtlheli/Projects/xcode-appicons/icon-128x128.png
/Volumes/Users/rtlheli/Projects/xcode-appicons/icon.png
  /Volumes/Users/rtlheli/Projects/xcode-appicons/icon-128x128@2x.png
/Volumes/Users/rtlheli/Projects/xcode-appicons/icon.png
  /Volumes/Users/rtlheli/Projects/xcode-appicons/icon-256x256.png
/Volumes/Users/rtlheli/Projects/xcode-appicons/icon.png
  /Volumes/Users/rtlheli/Projects/xcode-appicons/icon-256x256@2x.png
/Volumes/Users/rtlheli/Projects/xcode-appicons/icon.png
  /Volumes/Users/rtlheli/Projects/xcode-appicons/icon-512x512.png
/Volumes/Users/rtlheli/Projects/xcode-appicons/icon.png
  /Volumes/Users/rtlheli/Projects/xcode-appicons/icon-512x512@2x.png
Henriks-iMac:xcode-appicons rtlheli$ 
```

The script generates images with the original filname + size and scale:

```
Henriks-iMac:xcode-appicons rtlheli$ ls
README.md		icon-128x128@2x.png	icon-256x256.png	icon-32x32@2x.png	icon.png
generate_appicons.sh	icon-16x16.png		icon-256x256@2x.png	icon-512x512.png
icon-128x128.png	icon-16x16@2x.png	icon-32x32.png		icon-512x512@2x.png
Henriks-iMac:xcode-appicons rtlheli$ 
```

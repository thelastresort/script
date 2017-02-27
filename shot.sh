adb shell screencap -p /sdcard/test.png
timestamp=$(date '+%s')
#echo $timestamp
adb pull /sdcard/test.png ~/Desktop/android_screen_cap/${timestamp}.png
open ~/Desktop/android_screen_cap/${timestamp}.png


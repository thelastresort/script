pkgname=$1
pids=$(adb shell ps | grep ${pkgname} | awk '{print $2}')
pids=$(echo $pids)

pids=${pids// /\\|}
echo $pids
adb logcat | grep --color=auto "${pids}"
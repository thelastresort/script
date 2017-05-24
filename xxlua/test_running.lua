init("", 0)

pkgname="com.supercell.clashofclans.wdj"
flag = appIsRunning(pkgname);
sysLog(string.format('%s is running: %d', pkgname, flag))

mSleep(1000)

sysLog(string.format('frontAppName: %s', frontAppName()))

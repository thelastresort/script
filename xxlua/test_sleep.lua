init("", 0)
mSleep(2000)


math.randomseed(os.time())

while true do

    sleepTime = math.ceil(math.random()*3)*1000
    mSleep(sleepTime)
    sysLog("sleepTime="..sleepTime..",go on")

    --mSleep(6000)
    --toast("6s再次showtoast")

end
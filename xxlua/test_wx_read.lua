init("", 0)

math.randomseed(os.time())

while true do

    sleepTime = math.ceil(math.random()*10)*1000
    toast("间隔"..sleepTime.."往左滑动")
    mSleep(sleepTime)

    touchDown(1, 1000, 800)

    moveCount = 1
    while moveCount < 100 do
        moveCount = moveCount+1
        mSleep(1)
        touchMove(1, 1000-9*moveCount, 800)
    end

    touchUp(1, 100, 800)
end
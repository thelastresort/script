init("", 1)
mSleep(2000)

x = 700
y1_down = 500
y1_up = 1300

y2_down = 800
y2_up = 500

moveSleep = 20

while true do

    toast('往下滑动')
    touchDown(1, x, y1_down)
    bigLoop = 1
    while bigLoop<=100 do
        bigLoop = bigLoop + 1
        mSleep(moveSleep)
        touchMove(1, x, y1_down+8*bigLoop)
    end
    touchUp(1, x, y1_up)

    mSleep(2000)

    toast('往上滑动')
    touchDown(1, x, y2_down)
    bigLoop = 1
    while bigLoop<=100 do
        bigLoop = bigLoop + 1
        mSleep(moveSleep)
        touchMove(1, x, y2_down-3*bigLoop)
    end
    touchUp(1, x, y2_up)

    mSleep(2000)
    toast('准备getColor(1000, 1000)')
    getColor(1000, 1000)

    mSleep(2000)
end

init("", 0)

x1 = 180
y1 = 620

x2 = 600
y2 = 620


while true do

    toast('往左滑动')
    count = 0
    while count < 3 do
        mSleep(1000)
        touchDown(1, 1200, 800)
        count = count+1

        moveCount = 1
        while moveCount < 100 do
            moveCount = moveCount+1
            mSleep(2)
            touchMove(1, 1200-9*moveCount, 800)
        end

        touchUp(1, 300, 800)
    end

    toast('往右滑动')
    count = 0
    while count < 3 do
        mSleep(1000)
        touchDown(1, 300, 900)
        count = count+1

        moveCount = 1
        while moveCount < 100 do
            moveCount = moveCount+1
            mSleep(2)
            touchMove(1, 300+9*moveCount, 900)
        end

        touchUp(1, 1200, 900)
    end
end

function scale(x1, y1, x11, y11, x2, y2, x22, y22, x3, y3, x33, y33)
    id1 = 0
    id2 = 1
    id3 = 3
    touchDown(id1, x1, y1)
    touchDown(id2, x2, y2)
    touchDown(id3, x3, y3)

    i = 1
    while i < 10 do
        mSleep(10)
        touchMove(id1, x1 + (x11 - x1) / 10 * i, y1 + (y11 - y1) / 10 * i)
        touchMove(id2, x2 + (x22 - x2) / 10 * i, y2 + (y22 - y2) / 10 * i)
        touchMove(id3, x3 + (x33 - x3) / 10 * i, y3 + (y33 - y3) / 10 * i)
        i = i + 1
    end

    touchUp(id1, x11, y11)
    touchUp(id2, x22, y22)
    touchUp(id3, x33, y33)
end


init("", 0)
mSleep(2000)

cnt = 0
while cnt<10 do
    toast("多个手指放大")
    scale(600, 600, 500, 500, 700, 700, 800, 800, 650, 550, 750, 450);
    mSleep(1000)
    toast("多个手指缩小")
    scale(500, 500, 600, 600, 800, 800, 700, 700, 750, 450, 650, 550);
    mSleep(1000)

    cnt = cnt + 1
end

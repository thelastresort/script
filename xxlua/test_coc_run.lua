
init("", 0)

while true do
    mSleep(100)
    if getColor(100, 100) == 0xfff000 then
       touchDown(1, 100, 100);
       touchUp(1, 100, 100);
    end
    mSleep(100)
    if getColor(100, 100) == 0xfff000 then
       touchDown(1, 100, 100);
       touchUp(1, 100, 100);
    end

    touchDown(1, 717, 1656);
    touchUp(1, 717, 1656);

    mSleep(100)
    if getColor(100, 100) == 0xfff000 then
       touchDown(1, 100, 100);
       touchUp(1, 100, 100);
    end
    mSleep(100)
    if getColor(100, 100) == 0xfff000 then
       touchDown(1, 100, 100);
       touchUp(1, 100, 100);
    end

    touchDown(1, 1018, 1865);
    touchUp(1, 1018, 1865);
end

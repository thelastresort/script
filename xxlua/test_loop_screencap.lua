
init("", 0)

while true do
    mSleep(100)
    if getColor(100, 100) == 0xfff000 then
       touchDown(1, 100, 100);
       touchUp(1, 100, 100);
    end
    touchDown(1, 500, 500);
    touchUp(1, 500, 500);
end


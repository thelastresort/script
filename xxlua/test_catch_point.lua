init("", 0)

while true do
    dialog("请点击屏幕一次", 0);
    x,y = catchTouchPoint();
    mSleep(1000);
    dialog("x:"..x.." y:"..y, 0);
end


dialog("请慢速点击屏幕3次", 0);
local results = catchTouchPoint(3);
for i = 1, #results do
    dialog("第"..i.."个坐标为:"..i..",x="..results[i].x..",y="..results[i].y);
end
init("", 0)

dialog("请慢速点击屏幕2次", 0);
local results = catchTouchPoint(2);
for i = 1, #results do
    dialog("第"..i.."个坐标为:"..i..",x="..results[i].x..",y="..results[i].y);
end

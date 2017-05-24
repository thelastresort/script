

init("", 0)

id = createHUD()     --创建一个HUD
showHUD(id,"欢迎使用叉叉脚本！",24,"0xffff0000","0xffffffff",0,100,0,228,80)

cnt = 10
while cnt>=0 do
    cnt = cnt - 1
    mSleep(1000)
    sysLog(string.format('测试frontAppName: %d', cnt))
end
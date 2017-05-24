init("", 1)

toast("准备关闭程序");
mSleep(1000);

closeApp("com.netease.onmyoji.bili");
mSleep(3000);

toast("准备启动程序");
mSleep(1000);

runApp("com.netease.onmyoji.bili");
mSleep(3000);

count = 0
while count < 100 do
    toast("脚本运行中");
    mSleep(4000);
end

toast("结束");
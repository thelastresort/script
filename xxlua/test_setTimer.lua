
--[[
local __old_mSleep__ = mSleep
mSleep = function(ms)
	_debugLog("call lua mSleep")
	local myStep = 10
	if myStep > ms then
		myStep = ms
	end
	for i=0,ms,myStep do
		__old_mSleep__(myStep)
	end
end
--]]
--每隔2000毫秒toast提示一次a+b+c的结果
t1 = os.clock()
function func(a,b,c)
	toast(a+b+c)
	a=a+1
	b=b+1
	c=c+1
	setTimer(2000,func,a,b,c)
	t2 = os.clock()
	sysLog("time elapse:"..t2 - t1)
	t1 = os.clock()
end

setTimer(2000,func,0,1,2)

--等待运行
mSleep(20000)

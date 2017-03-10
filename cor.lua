function fun1(msg,i,j)
	for k=1,10,2 do
		print("fun1"..msg.." "..i.." "..j)
		coroutine.yield("oooooo", 12)
	end
end

function fun2(msg,i,j)
	for k=1,10,2 do
		print("fun2"..msg.." "..i.." "..j)
		coroutine.yield("kkkkkk", 13)
	end
end

co1=coroutine.create(fun1)
co2=coroutine.create(fun2)

for i=1,100,3 do
	coroutine.resume(co1, "ret", 1, 2)
	coroutine.resume(co2, "ret", 3, 4)
end

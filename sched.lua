function foo(a)
	print("foo", a)
	u = coroutine.yield(2*a)
	print("u:  ", u)
	return 100
end

co = coroutine.create(function(a,b)
	print("co-body", a, b)
	local r = foo(a+1)
	print("co-body", r)
	local r, s =coroutine.yield(a+b, a-b)
	print("co-body", r, s)
	return b, "end"
end)


print("main", coroutine.resume(co, 1, 10))
print("main", coroutine.resume(co, "www"))
print("main", coroutine.resume(co, "x"))
--print("main", coroutine.resume(co, "x", "y"))

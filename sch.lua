function SayHey(mag)
	for i = 1 , 3 do
		print(mag.."  "..i)
		coroutine.yield("googo", 1233)
end
 end
 coFunc= coroutine.create(SayHey)
print(coroutine.status(coFunc))
coroutine.resume(coFunc,"Run") --in i=1 yield

print("step1 ",coroutine.resume(coFunc, "Run coroutine"))

coroutine.resume(coFunc,"Run") --in i=2 yield
print(coroutine.status(coFunc))

coroutine.resume(coFunc,"Run") --in i=3 yield
print(coroutine.status(coFunc))

coroutine.resume(coFunc,"Run .") --in end
print(coroutine.status(coFunc))
coroutine.resume(coFunc,"Run ")
print(coroutine.status(coFunc))
coroutine.resume(coFunc,"Run ")
print(coroutine.status(coFunc))coroutine.resume(coFunc,"运行携程")
print(coroutine.status(coFunc))
coroutine.resume(coFunc,"Run ")
print(coroutine.status(coFunc))

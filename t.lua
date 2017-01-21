function f(x,y)
function f1(x)
	return x,x+1,x+2
end

local v1,v2,v3=f1(x)
print("v1:"..v1)
print("v2:"..v2)
print("v3:"..v3)
print("sum:\n")
return f1(x)+y
end

print(f(1,1))

v={}
v[12]=9;
v[1]=2;
v[2]=12;
v["hello"]="world";
for k,v in pairs(v)
do
	print(k,v)
end
table.sort(v);
for k,v in pairs(v)
do
	print(k,v)
end

sum=0

for i=0,2,1
do
	print("for:"..i)
end

for i=0,3,2
do
	print("for2:"..i)
end

age=12
name="xiaoming"

if age == 12 and name == "xiaoming"
then
	print("Yes! xiaoming~")
else
	print("No! xiaoming~")
end

print("----------------")
t={}
t.a="nihao"


function t:f()
	print(self.a)
end

function t:g()
	self.x = 10;
end

function t:h()
	print(self.t)
end

print("$$---------->")
print(t)
print(t:f())
print("-----------")
print(t.f)
print(t.g)
print(t.h)
print("__________")
print("f() belongs to ")

--[ this is a wront use of f, this is because f is a member 
--	of t, so you can NOT use f raw. 
-- Attention! this is NOT C plus plus
--]
--print("t:f()"..f(t))

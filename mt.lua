mytable = setmetatable({key1="value1"}, {
	__index = function(mytable, key)
		if key == "key2" then
			return "metatableevalue"
		else
			return nil
		end
	end
	})
print(mytable.key1, mytable.key2)

mytable = setmetatable({key1="value1"},{__index={key2="key2"}})

print(mytable.key1, mytable.key2)

table1={key1="key111"}
table2={key2="key222"}
table3={key3="key333"}

setmetatable(table3,{__index=table1})
setmetatable(table3,{__index=table2})

print(table3.key1)
print(table3.key2)
print(table3.key3)

print("-----------------")
table = setmetatable({key1="value1"}, {
		__newindex = function(mytable, key, value)
					rawset(mytable, key, "hello "..value.." world")
					end})
print(table.key1)
print(table.key2)
print("-----------------")
table.key1="nihao key1"
table.key2="key2"
print(table.key1)
print(table.key2)

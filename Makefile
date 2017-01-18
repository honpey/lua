lua:lua.c
	gcc -o lua -I/usr/include/lua5.1 lua.c -llua5.1
clean:
	test -f lua && rm lua

lua:lua.c
	gcc -o lua -I/usr/include/lua5.1 lua.c -llua5.1
newlua:newlua.c
	gcc -o newlua -I/usr/include/lua5.1 newlua.c -llua5.1
clean:
	test -f lua && rm lua
so.so:so.c
	gcc -Wall -fPIC --shared -o $@ $<
main:main.c
	gcc -o $@ $< -ldl

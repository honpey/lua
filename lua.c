#include <stdio.h>
#include <stdlib.h>

#include <lua.h>
#include <lauxlib.h>
#include <lualib.h>

int main()
{
	char buff[256] = {0};
	int error;
	lua_State *L=NULL;
	L = lua_open(); /* init Lua */

	luaL_openlibs(L); /* download the */

	luaL_dofile(L, "./test.lua"); /* Run the script */

	lua_getglobal(L, "showinfo"); /* get lua's showinfo fuction */

	lua_pcall(L, 0, 0, 0);
	/* */

	const char *pstr = "So beautiful world";
	lua_getglobal(L, "showstr");
	lua_pushstring(L, pstr);

	lua_pcall(L,1,0,0);

	lua_getglobal(L, "add");

	lua_pushinteger(L,2);
	lua_pushinteger(L,3);
	lua_pcall(L,2,1,0);

	printf("lua add function return val is %d\n", lua_tointeger(L, -1));
	
	lua_close(L);

	return 1;
}

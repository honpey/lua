prototype={x=10,y=20,width=100,height=100}
mywin={title="hello"}

setmetatable(mywin,{__index=prototype});

print("mywin.x:"..mywin.x);
print("mywin.y:"..mywin.y);
print("mywin.width:"..mywin.width);
print("mywin.height:"..mywin.height);
print("mywin.title:"..mywin.title);


#!/usr/bin/ruby


floor=0
count=0
up="("
down=")"

while (c=ARGF.read(1)) do
count+=1
       
floor +=1  if ( c.eql?(up) )
floor-=1 if ( c.eql?(down) )
if(floor <0) then
  puts count
  exit
end
end

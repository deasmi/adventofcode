#!/usr/bin/ruby


north='^'
south='v'
east='>'
west='<'

x=0
y=0

locations={}
has_present=0

while (c=ARGF.read(1)) do
  location_code=x.to_s + ',' + y.to_s
#  puts 'Santa at ' + location_code
  locations[location_code]=locations[location_code].to_i + 1
  y+=1 if (c==north)
  y-=1 if (c==south)
  x+=1 if (c==east)
  x-=1 if (c==west) 
end

locations.each do |location, presents|
  has_present+=1 if (presents>0)
end

puts has_present.to_s + ' houses received presents'

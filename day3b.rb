#!/usr/bin/ruby

class Deliverer

  @@north='^'
  @@south='v'
  @@east='>'
  @@west='<'

  
  def initialize
    @x=0
    @y=0
  end

  def deliver(locations)
    location_code=@x.to_s + ',' + @y.to_s
    locations[location_code]=locations[location_code].to_i + 1
  end

  def move(direction)
    @y+=1 if (direction==@@north)
    @y-=1 if (direction==@@south)
    @x+=1 if (direction==@@east)
    @x-=1 if (direction==@@west) 
  end
end


santas_go=true
locations={}
has_present=0
santa=Deliverer.new
robot=Deliverer.new

santa.deliver(locations)
robot.deliver(locations)

while (c=ARGF.read(1)) do
  if (santas_go) 
    santa.move(c)
    santa.deliver(locations)
  else
    robot.move(c)
    robot.deliver(locations)
  end
  santas_go ^= true # XOR flips
end


locations.each do |location, presents|
  has_present+=1 if (presents>0)
end

puts has_present.to_s + ' houses received presents'

#!/usr/bin/ruby

size=0 # Wrapping size
length=0 # Ribbon length

ARGF.each do |line|
  (ws,hs,ls) = line.split('x')
  w=ws.to_i
  h=hs.to_i
  l=ls.to_i
  wh = w*h
  wl = w*l
  hl = h*l

  sizes = [w,h,l]
  sizes.sort!
  
  sm = sizes[0]*sizes[1] # Smallest size
  size = size + 2*wh + 2*wl + 2*hl + sm

  length = length + 2*sizes[0] + 2*sizes[1] + w*h*l
  
end

puts size
puts length



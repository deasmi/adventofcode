#!/usr/bin/ruby
require 'digest'


key = 'yzbqklnj'
#key = 'abcdef'
#key = 'pqrstuv'
md5 = Digest::MD5.new
pattern = '^000000'

index=0
while (! md5.hexdigest(key + index.to_s).match(pattern) )
  index+=1
  print  '.' if ((index % 10000) == 0)
  $stdout.flush
end
puts
puts index
puts key + index.to_s
puts md5.hexdigest(key + index.to_s)

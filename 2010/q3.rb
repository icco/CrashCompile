#!/usr/bin/ruby

while !$stdin.eof?
   i = readline.chomp.to_i
   p (i / 1024.0) * 1000
end

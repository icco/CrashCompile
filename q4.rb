#!/usr/bin/ruby

print "What is the meaning of life? " 
while !$stdin.eof? do
   x = readline
   print "Wrong. Try again.\n\n"
   print "What is the meaning of life? " 
end


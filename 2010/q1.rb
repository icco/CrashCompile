#!/usr/bin/ruby

class Ingredient
   attr_writer :proof, :vol
end

print "number of ingredients : "
ing = gets().chomp.to_i
ings = []

for i in 1..ing do
   print "proof vol : "
   (proof, count) = gets().split
   ings[i] = Ingredient.new
   ings[i].proof = proof.to_i
   ings[i].vol = count.to_i
end

s = true
i = 0
ps = []
x = readlines.each{|item| item = item.chomp.to_i }
x.reject! {|item| !(item.empty?) }

for want in x do
   for j in ings do
      if want > j.proof
         p "Impossible to make."
      end
   end

   
end



#! /usr/bin/env ruby

class Box < Struct.new(:x1, :y1, :z1, :x2, :y2, :z2)
  def volume
    x = (self.x1 - self.x2).abs
    y = (self.y1 - self.y2).abs
    z = (self.z1 - self.z2).abs

    return x*y*z
  end
end

def main lines
  box_count = lines[0].to_i
  boxes = []

  lines[1..-1].each do |line|
    b = Box.new
    b.x1, b.y1, b.z1, b.x2, b.y2, b.z2 = line.split.map {|i| i.to_i }
    boxes.push b
  end

  puts boxes.map {|b| b.volume }.inject(:+)
end

main(ARGF.readlines.map {|i| i.strip })

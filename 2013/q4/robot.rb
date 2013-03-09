#! /usr/bin/env ruby

require 'csv'

class Point < Struct.new(:x, :y)
end

def main lines
  points = []
  lines.each do |line|
    p = Point.new
    p.x, p.y = line.split(',').map {|a| a.to_f }
    points.push p
  end

  d = 0
  points[0...-1].each_index do |i|
    d += Math.sqrt((points[i+1].x - points[i].x)**2 + (points[i+1].y - points[i].y)**2)
  end

  puts d.round(3)
end

main(ARGF.readlines.map {|i| i.strip })

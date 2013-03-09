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
end

main(ARGF.readlines.map {|i| i.strip })

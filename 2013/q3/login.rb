#! /usr/bin/env ruby

require 'csv'

def main lines
  entries = []
  data = {}
  names = {}

  lines.each do |line|
    entries.push CSV.parse(line).flatten
  end

  entries.each do |e|
    if e.size == 3
      if e[1] == "IN"
        data[e[0]] ||= { :in => e[2].to_i, :time => 0 }  
        data[e[0]] = { :in => e[2].to_i }
      elsif e[1] == "OUT"
        data[e[0]][:time] ||= 0
        data[e[0]][:time] += (e[2].to_i - data[e[0]][:in])
      end
    elsif e.size == 4
      names[e[0]] = e[3]
    end
  end

  a = {}
  names.sort.each_index do |n|
    n = n.to_s
    p = data[n][:time] if data[n]
    p ||= 0
    a[names[n]] = p
  end

  a.sort {|a, b| [b[1], a[0]] <=> [a[1], b[0]] }[0...5].each do |b,c|
    puts "#{b}: #{c}"
  end
end

main(ARGF.readlines.map {|i| i.strip })

#! /usr/bin/env ruby

require 'set'

class Edge < Struct.new(:begin, :end, :length)
end

class Graph < Struct.new(:edges, :nodes)
  def initialize edges
    self.edges = edges
    self.nodes = Set.new self.edges.map {|e| [e.begin, e.end] }.flatten
  end

  def length a, b
    n = {}
    d = {}
    p = {}

    self.edges.each do |e|
      n[e.begin] ||= []
      n[e.begin].push {:end => e.end, :cost => e.length}
    end

    self.nodes.each do |n|
      d[n] = nil
      p[n] = nil
    end

    d[a] = 0
    q = self.nodes

    while !q.empty? do
      q.each do |n|
        if d[n] < min
          min = d[n]
          u = n
        end

        q -= u
      end
    end

    return l
  end

end

def main lines
  node_count, edge_count = lines[0].split

  edges = []

  lines[1..-1].each do |line|
    n = Edge.new
    n.begin, n.end, n.length = line.split.map {|i| i.to_i }
    edges.push n
  end

  g = Graph.new edges

end

main(ARGF.readlines.map {|i| i.strip })

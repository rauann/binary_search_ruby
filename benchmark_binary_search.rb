require 'benchmark'
require './lib/binary_search'

list = (1..10_000_000).to_a

puts Benchmark.measure { BinarySearch.new.search(45367, list) }

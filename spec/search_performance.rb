require_relative '../lib/binary_search'
require 'benchmark'

array = (1..100000).map { rand(2**32-1) + 1}
num = array[rand(100000)]

Benchmark.bm do |x|
  x.report("array find") { array.find {|n| n == num} }
  x.report("binary search") { BinarySearch.find(array, num) }
end

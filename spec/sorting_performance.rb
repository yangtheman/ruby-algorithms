require_relative '../lib/custom_sort'
require 'benchmark'

array = (1..1000).map { rand(2**32-1) + 1 }
to_sort = CustomSort.new(array)

Benchmark.bm do |x|
  x.report("Bubble Sort") { to_sort.bubble_sort }
  x.report("Selection Sort") { to_sort.selection_sort }
  x.report("Merge Sort") { to_sort.merge_sort }
  x.report("Quick Sort") { to_sort.quick_sort }
end

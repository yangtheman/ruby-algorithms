require 'awesome_print'

class CustomSort

  attr_reader :array

  def initialize(base)
    @base = base
  end

  # Nested loop. Inspect each element of outer loop with all elements of inner
  # loop. If smaller element is found, swap it immediately.
  # O(n^2)
  def bubble_sort(array=@base)
    array.each_index do |index1|
      index1.upto(array.size-2) do |index2|
        if array[index1] > array[index2+1]
          array[index1], array[index2+1] = array[index2+1], array[index1]
        end
      end
    end
    array
  end

  # Nested loop. Inspect each element of outer loop with all elements of inner
  # loop. If smaller element is found, store index of the element. Swap it at
  # the end of each inner loop iteration.
  def selection_sort(array=@base)
    0.upto(array.size-1) do |index1|
      min_index = index1
      (index1+1).upto(array.size-1) do |index2|
        min_index = index2 if array[index2] < array[min_index]
      end
      array[index1], array[min_index] = array[min_index], array[index1]
    end
    array
  end

  # Merge divided arrays. Iterate through two arrays, compare first elements
  # of arrays, and remove the smaller item.
  def merge_sort_merge(left, right)
    sorted = []
    until left.empty? || right.empty?
      if left[0] <= right[0]
        sorted << left.shift
      else
        sorted << right.shift
      end
    end
    sorted += left + right
    sorted
  end

  # Divide given array into two equal-length arrays. Return the array if it only
  # contains one element.
  def merge_sort(array=@base)
    return array if array.size < 2
    mid = array.size/2
    left = array[0..mid-1]
    right = array[mid..-1]

    left_merge = merge_sort(left)
    right_merge = merge_sort(right)
    merge_sort_merge(left_merge, right_merge)
  end

  # Take first element as pivot and divide them into two arrays, one with bigger
  # elements and the other with smaller elements than the pivot element.
  def quick_sort(array=@base)
    return [] if array.empty?
    pivot = array.pop
    left, right = array.partition {|e| e < pivot}
    quick_sort(left) + [pivot] + quick_sort(right)
  end

  # Start from second element and iterate through the array in the outer loop.
  # Inner loop goes from previous element to the beginning of the array. Move
  # element to one position right if it's bigger than the element from the outer
  # loop.
  def insertion_sort(array=@base)
    1.upto(array.size-1) do |index1|
      num = array[index1]
      index2 = index1 - 1
      while index2 >= 0 && array[index2] > num do
        array[index2+1] = array[index2]
        index2 -= 1
      end
      array[index2+1] = num
    end
    array
  end

end

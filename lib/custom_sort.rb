class CustomSort

  attr_reader :array

  def initialize(base)
    @base = base
  end

  def bubble_sort
    array = @base
    array.each_index do |index1|
      index1.upto(array.size-2) do |index2|
        if array[index1] < array[index2+1]
          array[index1], array[index2+1] = array[index2+1], array[index1]
        end
      end
    end
  end

end

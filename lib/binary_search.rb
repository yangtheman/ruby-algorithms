class BinarySearch

  def self.find(array, element)
    sorted = array.sort
    low = 0
    high = element.size - 1
    middle = (low + high) / 2
    while test = sorted[middle]
      if test > element
        high -= 1
      elsif test < element
        low += 1
      else
        return true
      end
      middle = (low + high) / 2
    end
    false
  end

end

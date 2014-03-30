require_relative '../lib/custom_sort'
require 'rspec'

describe CustomSort do

  let(:base) { [1, 2, 3, 4, 5] }

  before do
    @array = CustomSort.new(base)
  end

  describe "#bubble_sort" do
    it "should sort given array" do
      @array.bubble_sort.should == [5, 4, 3, 2, 1]
    end
  end

end

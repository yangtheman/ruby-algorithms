require_relative '../lib/custom_sort'
require 'rspec'

describe CustomSort do

  let(:base) { [5, 3, 2, 1, 4] }

  before do
    @array = CustomSort.new(base)
  end

  describe "#bubble_sort" do
    it "should sort given array" do
      @array.bubble_sort.should == [1, 2, 3, 4, 5]
    end
  end

  describe "#selection_sort" do
    it "should sort given array" do
      @array.selection_sort.should == [1, 2, 3, 4, 5]
    end
  end

  describe "#merge_sort" do
    it "should sort given array" do
      @array.merge_sort.should == [1, 2, 3, 4, 5]
    end
  end

  describe "#quick_sort" do
    it "should sort given array" do
      @array.quick_sort.should == [1, 2, 3, 4, 5]
    end
  end

  describe "#insertion_sort" do
    it "should sort given array" do
      @array.insertion_sort.should == [1, 2, 3, 4, 5]
    end
  end
end

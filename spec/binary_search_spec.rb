require_relative '../lib/binary_search'
require 'rspec'

describe BinarySearch do

  let(:array) { [5, 6, 10, 4, 9] }

  describe ".find" do
    it "should return true if given element is found" do
      BinarySearch.find(array, 4).should == true
    end

    it "should handle finding the lowest element" do
      BinarySearch.find(array, 4).should == true
    end

    it "should handle finding the highest element" do
      BinarySearch.find(array, 10).should == true
    end

    it "should return nil if given element is not found" do
      BinarySearch.find(array, 2).should == false
    end
  end
end

require_relative '../lib/linked_list'
require 'rspec'

describe LinkedList do

  describe ".new" do
    it "should initialize @content with given argument" do
      node = LinkedList.new("first")
      node.content.should == "first"
    end

    it "should initialize @content with nil if no argument" do
      node = LinkedList.new
      node.content.should == nil
    end

    it "should return nil if next node does not exist" do
      node = LinkedList.new
      node.next.should == nil
    end
  end

  describe "#next_node" do
    it "should raise an error if give argument is not a node" do
      node = LinkedList.new
      expect { node.next_node("blah") }.to raise_error
    end

    it "should set the next_node to the given node" do
      node = LinkedList.new
      node2 = LinkedList.new
      node.next_node = node2
      node.next.should == node2
    end
  end

  describe "#print_nodes" do
    it "should print node contents" do
      node1 = LinkedList.new(1)
      node2 = LinkedList.new(2)
      node3 = LinkedList.new(3)
      node1.next_node = node2
      node2.next_node = node3

      node1.print_nodes.should == "1 -> 2 -> 3"
      node2.print_nodes.should == "2 -> 3"
    end
  end

  describe "#reverse" do
    it "should reverse node from given node" do
      node1 = LinkedList.new(1)
      node2 = LinkedList.new(2)
      node3 = LinkedList.new(3)
      node1.next_node = node2
      node2.next_node = node3

      node1.reverse

      node3.print_nodes.should == "3 -> 2 -> 1"
    end
  end

end

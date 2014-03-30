# Ruby Alogrithms

My own implementation of various algorithms in Ruby. I will try to include performance number as well.

### Binary Search

In `lib/binary_search.rb`

Comparison with Ruby's `any?` method.

```ruby
$ ruby ./spec/search_performance.rb
                   user       system     total    real
array.any?         0.010000   0.000000   0.010000 (  0.007985)
BinarySearch.find  0.030000   0.000000   0.030000 (  0.025298)
```
### Linked List

In `lib/linked_list.rb`

```ruby
$ irb
1.9.3-p194 :001 > load 'lib/linked_list.rb'
 => true
1.9.3-p194 :002 > node1 = LinkedList.new(1)
 => #<LinkedList:0x007fead39de570 @content="1">
1.9.3-p194 :003 > node2 = LinkedList.new(2)
 => #<LinkedList:0x007fead39e1b08 @content="2">
1.9.3-p194 :004 > node3 = LinkedList.new(3)
 => #<LinkedList:0x007fead39e4308 @content="3">
1.9.3-p194 :005 > node1.next_node = node2
 => #<LinkedList:0x007fead39e1b08 @content="2">
1.9.3-p194 :006 > node2.next_node = node3
 => #<LinkedList:0x007fead39e4308 @content="3">
1.9.3-p194 :007 > node1.print_nodes
 => "1 -> 2 -> 3"
1.9.3-p194 :008 > node2.print_nodes
 => "2 -> 3"
1.9.3-p194 :009 > node3.print_nodes
 => "3"
1.9.3-p194 :010 > node1.reverse
 => nil
1.9.3-p194 :011 > node3.print_nodes
 => "3 -> 2 -> 1"
```

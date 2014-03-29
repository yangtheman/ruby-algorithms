# Ruby Alogrithms

My own implementation of various algorithms in Ruby. I will try to include performance number as well.

### Binary Search

In `lib/binary_search.rb`

Comparison with Ruby's `any?` method.

```ruby
$ ruby ./spec/search_performance.rb
       user     system      total        real
array.any?  0.010000   0.000000   0.010000 (  0.007985)
BinarySearch.find  0.030000   0.000000   0.030000 (  0.025298)
```

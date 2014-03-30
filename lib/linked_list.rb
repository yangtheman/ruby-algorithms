class LinkedList

  attr_reader :content, :next

  def initialize(content=nil)
    @content = content.to_s unless content.nil?
  end

  def next_node=(node)
    raise "Not a node" unless node.is_a?(LinkedList) || node.nil?
    @next = node
  end

  def print_nodes
    output = @content
    node = @next
    while node
      output += " -> " + node.content
      node = node.next
    end
    output
  end

  def reverse
    previous = self
    current_node = @next
    self.next_node = nil
    while current_node
      next_node = current_node.next
      current_node.next_node = previous
      previous = current_node
      current_node = next_node
    end
  end

end

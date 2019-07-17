# Compare the performance of an Array to a Linked List using the Benchmark module.



require 'benchmark'
require_relative 'node'
require_relative 'linked_list'

array = []
list = LinkedList.new

# Compare the time it takes to create a 10,000 item Array to appending 10,000 items to a Linked List.

p "Array Creation"
puts Benchmark.measure {
  array = []
  (0...10000).each do |x|
    array[x] = Node.new(x)
  end
}

p "Node Creation"
puts Benchmark.measure {
  (0...10000).each do |x|
    list.add_to_tail(Node.new(x))
  end
}

# Compare the time it takes to access the 5000th element of the Array and the 5000th Node in the Linked List.

p "Array Access"
puts Benchmark.measure {
  array[4999]
}

p "Node Access"
puts Benchmark.measure {
  node = list.head
  (1..4999).each do |x|
    node = node.next
  end
}

# Compare the time it takes to remove the 5000th element from the Array to removing the 5000th Node in the Linked List.

p "Array Delete"
puts Benchmark.measure {
  array.delete_at(4999)
}

p "Node Delete"
puts Benchmark.measure {
  node = list.head
  (1..4999).each do |x|
    node = node.next
  end
  list.delete(node)
}
end

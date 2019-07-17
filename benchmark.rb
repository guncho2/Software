# Compare the performance of an Array to a Linked List using the Benchmark module.



require 'benchmark'
require_relative 'node'
require_relative 'linked_list'

array = []
list = LinkedList.new

# Compare the time it takes to create a 10,000 item Array to appending 10,000 items to a Linked List.

Benchmark.bmbm do |x|
    x.report("Add 10,000 items to array"){
      array = []
      (0...10000).each do |x|
        array[x] = Node.new(x)
      end
    }
    x.report("Append 10,000 items in list"){
      (0...10000).each do |x|
        list.add_to_tail(Node.new(x))
      end
    }

# Compare the time it takes to access the 5000th element of the Array and the 5000th Node in the Linked List.

x.report("Find 5,000th item in MyArray") { 
    MyArray[4999] 
}
x.report("Find 5,000th item in MyList") { 
    MyList.find_node(4999.to_s) 
}

# Compare the time it takes to remove the 5000th element from the Array to removing the 5000th Node in the Linked List.

x.report("Delete 5,000th item in MyArray") { 
    MyArray.delete_at(4999) 
}
x.report("Delete 5,000th item in MyList") { 
    MyList.delete( MyList.find_node(4999.to_s) )
}

end

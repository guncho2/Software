class Node
  attr_accessor :next
  attr_accessor :data
  attr_accessor :prev
  def initialize(data)
    self.data = data
  end
end
require 'pry'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    @head = Node.new(data)
  end

  def count
    # binding.pry
    if @head.next_node == nil
      1
    end
  end

  def to_string
    @head.data
  end
end

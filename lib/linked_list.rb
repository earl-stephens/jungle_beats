require 'pry'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    # last_node = @head
    # unless last_node == nil
    #   while last_node.next_node != nil
    #     last_node = last_node.next_node
    #   end
    # end
    # last_node = Node.new(data)
      # binding.pry
      if @head == nil
        @head = Node.new(data)
      else
        # binding.pry
        last_node = @head
        while last_node.next_node != nil
          last_node = last_node.next_node
        end
        last_node.next_node = Node.new(data)
      end
  end

  def count
    # binding.pry
    if @head.next_node == nil
      return 1
    else
    counter = 1
    last_node = @head
    while last_node.next_node != nil
      last_node = last_node.next_node
      counter += 1
    end
    counter
    end
  end

  def to_string
    output = @head.data
    last_node = @head
    while last_node.next_node != nil
      # binding.pry
      output = output + " " + last_node.next_node.data
      last_node = last_node.next_node
    end
    output
  end
end

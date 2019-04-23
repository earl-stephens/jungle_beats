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

  def prepend(data)
    second_node = @head
    @head = Node.new(data)
    # binding.pry
    @head.next_node = second_node
  end

  def insert(position, data)
    position_counter = 0
    if @head.next_node == nil
      position_counter = 1
      if position_counter == position
        insert_into_list(position, data, @head.next_node)
      end
    else
      position_counter = 1
      if position_counter == position
        insert_into_list(position, data, @head.next_node)
      end
      last_node = @head
      while last_node.next_node != nil
        last_node = last_node.next_node
        position_counter += 1
        binding.pry
        if position_counter == position
          insert_into_list(position, data, last_node.next_node)
        end
        break
      end
    end
  end

  def insert_into_list(position, data, node)
    binding.pry
  end
end

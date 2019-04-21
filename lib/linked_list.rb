require 'pry'

class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    if @head == nil
      @head = Node.new(data)
    elsif @head.next_node == nil
      @head.next_node_update(Node.new(data).object_id)
    else
      next_link = @head.next_node
      unless next_link == nil
        next_link = ObjectSpace._id2ref(next_link).object_id
        # binding.pry
      end
        ObjectSpace._id2ref(next_link).next_node_update(Node.new(data).object_id)
    end
    # binding.pry
  end

  # def count
  #   if @head == nil
  #     return 0
  #   end
  #   counter = 0
  #   if @head != nil
  #     binding.pry
  #     next_link = @head.next_node
  #     while next_link != nil
  #       next_link = ObjectSpace._id2ref(next_link).object_id
  #       counter += 1
  #     end
  #     counter
  #   end
  # end
  #
  # def to_string
  #   @head.data
  # end
end

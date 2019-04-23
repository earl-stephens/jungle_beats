class Node
  attr_accessor :next_node,
                :data

  def initialize(data, node = nil)
    @data = data
    @next_node = node
  end

end

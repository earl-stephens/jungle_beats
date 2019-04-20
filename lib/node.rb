class Node
  attr_reader :data,
              :next_node

  def initialize(data, node = nil)
    @data = data
    @next_node = node
  end

end

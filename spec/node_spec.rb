require './lib/node'

RSpec.describe 'can create a new node' do
  it 'from the node class' do
    node = Node.new('plop')

    expect(node).to be_an_instance_of(Node)

    expect(node.data).to eq("plop")
  end

  it 'doesnt have a link yet' do
    node = Node.new('plop')

    expect(node.next_node).to eq(nil)
  end
end

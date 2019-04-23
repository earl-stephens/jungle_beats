require './lib/node'
require './lib/linked_list'
require 'pry'

RSpec.describe 'testing linked list class' do
  before :each do
    @list = LinkedList.new
  end

  it 'creates a linked list object' do

    expect(@list).to be_an_instance_of(LinkedList)
    expect(@list.head).to eq(nil)
  end

  it 'can add a node' do
    @list.append('doop')

    expect(@list.head).to be_an_instance_of(Node)
    expect(@list.head.data).to eq('doop')
    expect(@list.head.next_node).to eq(nil)
  end

  it 'can count nodes' do
    @list.append('doop')
    expect(@list.count).to eq(1)
  end


  it 'can output the data' do
    @list.append('doop')

    expect(@list.to_string).to eq('doop')
  end

describe 'a single linked list' do
  it 'can append multiple nodes' do
    @list = LinkedList.new
    @list.append('doop')
    @list.append('deep')

    expect(@list.head.next_node).to_not eq(nil)
    expect(@list.count).to eq(2)
    expect(@list.to_string).to eq('doop deep')
  end
end
end

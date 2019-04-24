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

  describe 'it can prepend a node' do
    it 'to the beginning of the list' do
      list = LinkedList.new
      list.append('plop')

      expect(list.to_string).to eq('plop')

      list.append('suu')
      list.prepend('dop')

      expect(list.to_string).to eq('dop plop suu')
      expect(list.count).to eq(3)
    end
  end

  describe 'it can add a node' do
    it 'in the middle of a list' do
      list = LinkedList.new
      list.append('plop')
      list.append('suu')
      list.prepend('dop')
      list.insert(1, 'woo')

      expect(list.to_string).to eq('dop woo plop suu')
      expect(list.count).to eq(4)

      list.insert(3, 'pop')

      expect(list.to_string).to eq('dop woo plop pop suu')
      expect(list.count).to eq(5)
    end
  end

  describe 'it can search the list' do
    before :each do
      @list = LinkedList.new
      @list.append('deep')
      @list.append('woo')
      @list.append('shi')
      @list.append('shu')
      @list.append('blop')
    end

    it 'can find nodes' do

      expect(@list.find(2, 1)).to eq('shi')
      expect(@list.find(1, 3)).to eq('woo shi shu')
    end

    it 'can search for data in a list' do

      expect(@list.includes?('deep')).to eq(true)
      expect(@list.includes?('dep')).to eq(false)
    end
  end
end

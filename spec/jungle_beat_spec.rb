require './lib/jungle_beat'
require './lib/node'
require './lib/linked_list'
require 'pry'

RSpec.describe 'testing jungle beat class' do
  it 'can create an instance of jungle beat' do
    jb = JungleBeat.new

    expect(jb.list).to be_an_instance_of(LinkedList)
    expect(jb.list.head).to eq(nil)
  end

  it 'can append data' do
    jb = JungleBeat.new

    jb.append('deep doo ditt')

    expect(jb.list.head.next_node.data).to eq('doo')

    jb.append('woo hoo shu')

    expect(jb.count).to eq(6)
  end

end

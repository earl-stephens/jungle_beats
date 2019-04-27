require 'pry'

class JungleBeat
  attr_reader :list

  def initialize
    @list = LinkedList.new
  end

  def append(data)
    individual_data = data.split(' ')
    individual_data.each do |datum|
      @list.append(datum)
    end
  end

  def count
    @list.count
  end

  def play
    beats = @list.to_string
    `say -r 500 #{beats}`
  end

end

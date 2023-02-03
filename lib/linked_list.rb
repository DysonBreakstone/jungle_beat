require './lib/node'

class LinkedList

  attr_reader :head, :list_array

  def initialize
    @list_array = []
    @head = nil
  end

  def append(data)
    @list_array << Node.new(data)
    @head = @list_array[0]
  end

  def count
    @list_array.length
  end

  def to_string
    @list_array.map{ |node| node.data}.join(" ")
  end

end
require './lib/node'

class LinkedList

  attr_reader :head, :list_array

  def initialize
    @head = nil
    @count = 0
  end

  def append(data)

    current_node = @head
    if @head == nil
      @head = Node.new(data)
      @count += 1
    elsif current_node.next_node != nil
      current_node = current_node.next_node
    else
      current_node.next_node = Node.new(data)
      @count +=1
    end

    
  end

  def count
    @count
  end

  def to_string
    complete_string = ""
    current_node = @head
    
    for i in 1..@count
      complete_string << "#{current_node.data} "
      current_node = current_node.next_node
    end
      
    complete_string.rstrip
  end

end
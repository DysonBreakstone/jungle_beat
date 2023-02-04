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
      @count += 1
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

  def prepend(data)
    new_node = Node.new(data)
    new_node.next_node = @head if @head != nil
    @head = new_node
    @count += 1
  end


  def insert(position, data)
    current_node = @head
    i = 1
    while i < position
      current_node = current_node.next_node
      i += 1
    end
    node_ahead = current_node.next_node
    current_node.next_node = Node.new(data)
    current_node.next_node.next_node = node_ahead
    @count += 1
  end

end
require './lib/linked_list'

class JungleBeat
  
  attr_reader :list, :beats

  def initialize
    @list = LinkedList.new
    @beats = ""
  end

  def append(new_string)
    new_string.split(" ").each do |beat|
      list.append(beat)
    end
    new_string
  end

  def count
    list.count
  end

end
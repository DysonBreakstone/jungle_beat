require './lib/linked_list'

class JungleBeat
  
  attr_reader :list, :beats

  def initialize(first_beats = nil)
    @list = LinkedList.new
    @list.append(first_beats) if first_beats != nil
    @beats = ""
  end

  def append(new_string)
    new_additions = 0
    new_string.split(" ").each do |beat|
      if beat.scan(/[bcdfghjklmnpqrstvwxyz]+[aeiouy]+[bcdfghjklmnpqrstvwxyz]/).length < 2 && !beat.include?("#{/\W/}") && !beat.split("").include?(/[aeiouy]{3,}/) && !beat.split("").include?(/[bcdfghjklmnpqrstvwxyz]{3,}/) 
        list.append(beat)
        new_additions += 1
      end
      @beats = list.to_string
    end
    new_additions
  end

  def count
    list.count
  end

  def play
    `say -r 500 -v Boing #{beats}`
  end

end

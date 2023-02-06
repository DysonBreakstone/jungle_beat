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
        @list.append(beat)
        new_additions += 1
      end
    end
      @beats = @list.to_string
    new_additions
  end

  def prepend(new_beat)
    new_beat = self.beat_cleaner(new_beat)
    new_additions = 0
    
    new_beat.reverse.each do |beat|
      @list.prepend(beat)
      new_additions += 1
    end

    new_additions
  end

  def all
    @list.to_string
  end

  def count
    @list.count
  end

  def play
    `say -r 500 -v Boing #{beats}`
  end

  def beat_cleaner(new_beat)
    vowel = "aeiouyAEIOUY"
    consonant = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    three_vowels = /[#{vowel}]{3}/
    three_consonants = /[#{consonant}]{3}/
    clean_beat = ""


    clean_beat = new_beat.split(" ").map{ |beat| clean_beat << beat if beat.scan(/[#{vowel}]+[#{consonant}]/).length < 2 && beat.scan(/[^a-zA-Z]/).length == 0 && !!!(beat =~ three_vowels) && !!!(beat =~ three_consonants)}
    clean_beat.compact
  end

end

require './lib/linked_list'

class JungleBeat
  
  attr_accessor :rate, :voice
  attr_reader :list

  def initialize(first_beats = nil)
    @voice = "Boing"
    @rate = 500
    @list = LinkedList.new
    @list.append(first_beats) if first_beats != nil
  end

  def append(new_string)
    new_string = self.beat_cleaner(new_string)
    new_additions = 0

    new_string.each do |beat|
        @list.append(beat)
        new_additions += 1
    end

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

  def play()
    beats = @list.to_string
    `say -r #{@rate} -v #{@voice} #{beats}`
    return beats.split(" ").length
  end

  def reset_rate
    @rate = 500
  end

  def reset_voice
    @voice = "Boing"
  end

  def beat_cleaner(new_beat)
    vowel = "aeiouyAEIOUY"
    consonant = "bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
    three_vowels = /[#{vowel}]{3}/
    three_consonants = /[#{consonant}]{3}/
    clean_beat = []
    
    new_beat.split(" ").each do |beat| 
      clean_beat << beat if beat.scan(/[#{vowel}]+[#{consonant}]/).length < 2 && beat.scan(/[^a-zA-Z]/).length == 0 && !!!(beat =~ three_vowels) && !!!(beat =~ three_consonants)
    end

    clean_beat.compact
  end

end

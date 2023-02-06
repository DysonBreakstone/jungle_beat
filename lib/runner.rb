require './lib/jungle_beat'



def do_the_thing
  jb = JungleBeat.new("ding, dah, oom, oom, ding, oom, oom, oom, ding, dah, oom, oom, ding, dah, oom, oom, ding, dah, oom, oom")
  jb.play
end

def change_speed_then_thing
  jb = JungleBeat.new("deep dop dop deep")
  jb.rate = 100

  jb.play
end

def change_voice_then_thing
  jb = JungleBeat.new("deep dop dop deep")
  jb.voice = "Daniel"

  jb.play
end

def resets_then_thing
  jb = JungleBeat.new("deep dop dop deep")
  jb.play
  jb.rate = 100
  jb.play
  jb.voice = "Daniel"
  jb.play
  jb.reset_rate
  jb.reset_voice
  jb.play
end


do_the_thing
change_speed_then_thing
change_voice_then_thing
resets_then_thing
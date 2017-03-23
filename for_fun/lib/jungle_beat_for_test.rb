require './lib/node'
require './lib/linked_list.rb'
require './lib/jungle_beat.rb'

jb = JungleBeat.new
jb.append("I said a hip hop Hippie to the hippie The hip hip a hop and you don't stop a rock it out Bubba to the bang bang boogie boobie to the boogie To the rhythm of the boogie the beat")
jb.voice = "Alex"
jb.rate = 150
jb.play

# jb.play
# jb.rate = 100
# jb.play
# jb.voice = "Alice"
# jb.play
# jb.reset_rate
# jb.reset_voice
# jb.play
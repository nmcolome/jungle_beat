require './lib/node'
require './lib/linked_list.rb'
require './lib/jungle_beat.rb'

jb = JungleBeat.new
jb.append("bang the hip the hippie to the hip hip hop, a you dont stop the rock it out to the boogie the bang bang the boogie to the boogie, the beat")
jb0 = JungleBeat.new
jb01 = JungleBeat.new
jb0.append("Now, what you hear is not a test I'm rappin' to the beat. And me, the groove and my friends are gonna try to move your feet. See I am Wonder Mike and Id like to say hello To the black to the white the red and the brown The purple and yellow. but first, I gotta Bang bang the boogie to the boogie say up jump the boogie to the bang bang boogie Let's rock, you don't stop. Rock the rhythm that'll make your body rock")
jb01.append("Well so far you've heard my voice but I brought two friends along. And the next on the mike is my man Hank Co mon, Hank, sing that song")
jb.voice = "Alex"
jb0.voice = "Alex"
jb01.voice = "Alex"
jb.rate = 150
jb0.rate = 150

jb1 = JungleBeat.new
jb1.append("Check it out. I'm the C A S A the N O V A And the rest is F L Y. You see I go by the code of the doctor of the mix, And these reasons I'll tell you why. You see I'm six foot one and I'm tons of fun When I dress to a T, I got more clothes than Muhammad Ali and I dress so viciously")
jb1.voice = "Ralph"
jb1.rate = 150
jb2 = JungleBeat.new
jb2.append("")

jb.play
jb0.play
jb01.play
jb1.play
# jb.play
# jb.rate = 100
# jb.play
# jb.voice = "Alice"
# jb.play
# jb.reset_rate
# jb.reset_voice
# jb.play
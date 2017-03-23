require './lib/node'
require './lib/linked_list.rb'
require './lib/jungle_beat.rb'

# p node = Node.new("plop")
# p node.data
# p node.next_node

list = LinkedList.new
list.head
list.append("doop")
# p list.head.data
# p list.head.next_node
# p list.count
# p list.to_string
list
list.head
list.head.next_node
list.append("deep")
# list
# list.head
# list.head.next_node
# list.count
p list.to_string
# list.append("plop")
# p list
# p list.to_string
# list.append("suu")
# list
# list.prepend("dop")
# list.to_string
# list.count
# list.insert(1, "woo")
# list.to_string
# list.append("deep")
# list.insert(1, "shi")
# list.insert(2, "shu")
# list.append("blop")
# list.insert(1,"woo")
# list.to_string
# list.find(2, 1)
# list.find(1, 3)
# list.includes?("deep")
# list.includes?("dep")
# list.count
# list.pop
# list.to_string
# list.pop
# list.to_string

# jb = JungleBeat.new
# jb.list
# jb.list.head
# jb.append("deep doo ditt")
# jb.list.head.data
# jb.list.head.next_node.data
# jb.append("woo hoo shu")
# p jb.count

# jb = JungleBeat.new
# p jb.append("deep doo ditt woo hoo shu")
# p jb.count
# p jb.list.count
# jb.play

# jb = JungleBeat.new("deep")
# jb.append("Mississippi")
# jb.all
# jb.prepend("tee tee tee Mississippi")
# jb.all

# jb = JungleBeat.new("deep dop dop deep")
# jb.play
# jb.rate = 100
# jb.play
# jb.voice = "Alice"
# jb.play
# jb.reset_rate
# jb.reset_voice
# jb.play
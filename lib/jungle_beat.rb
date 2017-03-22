require './lib/node'
require './lib/linked_list.rb'

node = Node.new("plop")
node.data
node.next_node

list = LinkedList.new
list.head
list.append("doop")
p list
p list.head
p list.head.next_node
p list.append("deep")
p list
p list.head
# p list.head.next_node
# # list.count
# p list.to_string #remove p
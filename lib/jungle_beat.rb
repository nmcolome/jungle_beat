require './lib/node'
require './lib/linked_list.rb'

node = Node.new("plop")
node.data
node.next_node

list = LinkedList.new
list.head
list.append("doop")
list
list.head
list.head.next_node
list.append("deep")
list
list.head
list.head.next_node
list.count
list.to_string
require './lib/node'
require './lib/linked_list.rb'

# node = Node.new("plop")
# node.data
# node.next_node

list = LinkedList.new
# list.head
# list.append("doop")
# list
# list.head
# list.head.next_node
# list.append("deep")
# list
# list.head
# list.head.next_node
# list.count
# list.to_string
list.append("plop")
list.to_string
list.append("suu")
list
list.prepend("dop")
list.to_string
list.count
list.insert(1, "woo")
list.to_string
list.insert(2, "shi")
list.insert(3, "shu")
p list.to_string
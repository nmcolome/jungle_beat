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
# list.append("plop")
# list.to_string
# list.append("suu")
# list
# list.prepend("dop")
# list.to_string
# list.count
# list.insert(1, "woo")
# list.to_string
list.append("deep")
list.insert(1, "shi")
list.insert(2, "shu")
list.append("blop")
list.insert(1,"woo")
list.to_string
# list.find(2, 1)
# list.find(1, 3)
list.includes?("deep")
list.includes?("dep")
p list.pop
# list.pop
# list.to_string
require "./lib/node"
require "./lib/linked_list"

node = Node.new("plop")
node.data
node.next_node

list = LinkedList.new
list.head
p list.append("doop")
list.head.next_node
list.count
list.to_string
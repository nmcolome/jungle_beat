require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list'
require './lib/jungle_beat'

class JungleBeatTest < Minitest::Test

    def test_new_node
        node = Node.new("plop")

        assert_equal Node, node.class
    end

    def test_value_assignment_in_node
        node = Node.new("plop")

        assert_equal "plop", node.data
    end

    def test_if_next_node_nil_by_default
        node = Node.new("plop")

        assert_nil node.next_node
    end

    def test_new_linked_list
        list = LinkedList.new
        
        assert_equal LinkedList, list.class
    end

    def test_list_head_defaults_to_nil
        list = LinkedList.new

        assert_equal nil, list.head
    end
    
end

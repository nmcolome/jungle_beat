require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'

class NodeTest < Minitest::Test

    def test_new_node
        node = Node.new("plop")

        assert_equal Node, node.class
    end

    def test_data_assignment_in_node
        node = Node.new("plop")

        assert_equal "plop", node.data
    end

    def test_if_next_node_nil_by_default
        node = Node.new("plop")

        assert_nil node.next_node
    end

    def test_if_user_can_change_it
        node = Node.new("doop")
        
        node.data = "pop"

        assert_equal "pop", node.data
    end
    
end

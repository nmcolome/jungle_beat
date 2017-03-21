require 'minitest/autorun'
require 'minitest/pride'
require './lib/node.rb'

class NodeTest < Minitest::Test

    def test_new_node
        node = Node.new

        assert_equal Node, node.class
    end
end

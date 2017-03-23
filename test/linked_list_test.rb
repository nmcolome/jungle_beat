require 'minitest/autorun'
require 'minitest/pride'
require './lib/linked_list'
require './lib/node'

class LinkedListTest < Minitest::Test

    def test_new_linked_list
        list = LinkedList.new
        
        assert_equal LinkedList, list.class
    end

    def test_list_head_defaults_to_nil_if_empty
        list = LinkedList.new

        assert_equal nil, list.head
    end

    def test_if_first_append_works
        list = LinkedList.new

        list.append("doop")

        assert_equal "doop", list.head.data
    end

    def test_if_multiple_appends_work
        list = LinkedList.new

        list.append("doop")
        list.append("deep")

        assert_equal "doop deep", list.to_string
    end
    
    def test_if_first_node_is_inside_head
        list = LinkedList.new
        
        list.append("doop")

        assert_equal "doop", list.head.data
    end

    def test_if_tail_defaults_to_nil
        list = LinkedList.new

        list.append("doop")

        assert_nil list.head.next_node
    end

    def test_if_counts
        list = LinkedList.new

        list.append("doop")

        assert_equal 1, list.count
    end

    def test_if_turns_to_string
        list = LinkedList.new

        list.append("doop")

        assert_equal "doop", list.to_string
    end
    
end

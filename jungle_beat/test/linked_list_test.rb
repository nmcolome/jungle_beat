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
        assert_equal Node, list.head.class
    end

    def test_if_multiple_appends_work
        list = LinkedList.new

        list.append("doop")
        list.append("deep")

        assert_equal "deep", list.head.next_node.data
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

    def test_if_tail_is_always_nil
        list = LinkedList.new

        list.append("doop")
        list.append("deep")
        list.append("plop")

        assert_nil list.head.next_node.next_node.next_node
    end

    def test_if_counts
        list = LinkedList.new

        assert_equal 0, list.count
        list.append("doop")
        assert_equal 1, list.count
        list.append("beep")
        assert_equal 2, list.count
        list.append("plop")
        assert_equal 3, list.count
    end

    def test_if_turns_to_string
        list = LinkedList.new

        list.append("doop")

        assert_equal "doop", list.to_string
    end
    
    def test_if_inserts_one_node
        list = LinkedList.new

        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        list.insert(1, "woo")

        assert_equal "dop woo plop suu", list.to_string
    end
    
    def test_if_prepends_one_node
        list = LinkedList.new

        list.append("plop")
        list.append("suu")
        list.prepend("dop")

        assert_equal "dop plop suu", list.to_string
    end

    def test_if_finds_one_node
        list = LinkedList.new

        list.append("deep")
        list.insert(1, "shi")
        list.insert(2, "shu")
        list.append("blop")
        list.insert(1,"woo")
        list.find(2,1)

        assert_equal "shi", list.find(2,1)
    end
    
    def test_if_pops
        list = LinkedList.new

        list.append("plop")
        list.append("suu")
        list.prepend("dop")
        list.insert(1, "woo")

        assert_equal "dop woo plop suu", list.to_string
    end
    
    def test_if_includes
        list = LinkedList.new

        list.append("deep")
        list.prepend("dop")
        list.insert(1, "woo")

        assert list.includes?("deep")
    end
end

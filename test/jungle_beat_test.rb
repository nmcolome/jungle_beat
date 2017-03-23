require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list'
require './lib/jungle_beat'

class JungleBeatTest < Minitest::Test

    def test_JungleBeat_new
        jb = JungleBeat.new

        assert_instance_of JungleBeat, jb
    end

    def test_if_linked_list_head_is_nil_by_default
        jb = JungleBeat.new

        assert_nil jb.list.head
    end
    
    def test_if_appends_one_node
        jb = JungleBeat.new
        
        jb.append("deep")
        jb.append("doo")

        assert_equal "deep doo", jb.to_string
    end
    
    def test_if_appends_several_nodes
        jb = JungleBeat.new

        jb.append("deep doo ditt")

        assert_equal "deep doo ditt", jb.to_string
    end
        
end

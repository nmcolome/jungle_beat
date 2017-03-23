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

    def test_if_creates_a_linked_list_with_data_input
        jb = JungleBeat.new("deep")

        assert_equal "deep", jb.list.head.data
    end
    
    def test_if_appends_one_node
        jb = JungleBeat.new
        
        jb.append("deep")
        jb.append("doo")

        assert_equal "deep doo", jb.all
    end
    
    def test_if_appends_several_nodes
        jb = JungleBeat.new

        jb.append("deep doo ditt")

        assert_equal "deep doo ditt", jb.all
        assert_equal 3, jb.count
    end

    def test_if_count
        jb = JungleBeat.new

        jb.append("deep doo ditt")
        jb.append("woo hoo shu")

        assert_equal 6, jb.count
    end

    def test_if_stores_in_a_linked_list
        jb = JungleBeat.new

        jb.append("deep doo")

        assert_equal "doo", jb.list.head.next_node.data
    end
    
    def test_if_only_accepts_sounds_allowed
        jb = JungleBeat.new

        jb.append("deep doo Mississippi ditt woo hoo shu")

        assert_equal "deep doo ditt woo hoo shu", jb.all
    end

    def test_if_all_prints_the_whole_string
        jb = JungleBeat.new

        jb.append("deep doo Mississippi ditt woo hoo shu")

        assert_equal "deep doo ditt woo hoo shu", jb.all
    end
    
    def test_assignment_of_rate
        jb = JungleBeat.new

        jb.rate = 800

        assert_equal 800, jb.rate
    end
    
    def test_assignment_of_voice
        jb = JungleBeat.new

        jb.voice = "Alex"

        assert_equal "Alex", jb.voice
    end
    
    def test_if_reset_of_rate
        jb = JungleBeat.new

        jb.rate = 800
        jb.reset_rate
        jb.rate = 200
        jb.reset_rate

        assert_equal 500, jb.rate
    end
    
    def test_if_reset_of_voice
        jb = JungleBeat.new

        jb.voice = "Tom"
        jb.reset_voice
        jb.voice = "Allison"
        jb.reset_voice

        assert_equal "Boing", jb.voice
    end
        
end

require 'test/unit'
require 'app/node'

class TestNode < Test::Unit::TestCase

    def test_created_node_data
        node = Node.new 3
        assert_equal 3, node.data
    end

    def test_created_node_color
        node = Node.new 3
        assert_equal :BLACK, node.color
    end

end

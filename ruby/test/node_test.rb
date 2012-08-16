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

    def test_node_equality
        node1 = Node.new 3
        node2 = Node.new 3
        assert_equal node1, node2
    end

    def test_node_inequality
        node1 = Node.new 3
        node2 = Node.new 5
        assert_not_equal node1, node2
    end
    
    def test_node_should_not_be_equal_to_non_node
        node1 = Node.new 3
        node2 = "3"
        assert_not_equal node1, node2
    end

    def test_node_add_right_child
        node = Node.new 3
        child = Node.new 5
        node.addChild child
        assert_equal child, node.right
    end

    def test_node_add_right_child
        node = Node.new 3
        child = Node.new 1
        node.addChild child
        assert_equal child, node.left
    end

    def test_node_add_stupid_child
        node = Node.new 3
        child = "john" 
        assert_raise Exception do
          node.addChild child
        end
    end
end

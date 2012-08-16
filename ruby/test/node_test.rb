require 'test/unit'
require 'app/node'

class TestNode < Test::Unit::TestCase

    def setup
        @node = Node.new 3
    end

    def test_created_node_data
        assert_equal 3, @node.data
    end

    def test_created_node_color
        assert_equal :BLACK, @node.color
    end

    def test_node_equality
        node2 = Node.new 3
        assert_equal @node, node2
    end

    def test_node_inequality
        node2 = Node.new 5
        assert_not_equal @node, node2
    end
    
    def test_node_should_not_be_equal_to_non_node
        node2 = "3"
        assert_not_equal @node, node2
    end

    def test_node_add_right_child
        child = Node.new 5
        @node.addChild child
        assert_equal child, @node.right
    end

    def test_node_add_right_child
        child = Node.new 1
        @node.addChild child
        assert_equal child, @node.left
    end

    def test_node_add_stupid_child
        child = "john" 
        assert_raise Exception do
          @node.addChild child
        end
    end

    def test_node_to_string
        expect = "node{data: 3, color: BLACK}"
        assert_equal expect, @node.to_s
    end

end

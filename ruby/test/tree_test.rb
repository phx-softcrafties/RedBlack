require 'test/unit'
require 'app/tree'
require 'app/node'

class TestTree < Test::Unit::TestCase
    def create_tree
        node = Node.new 3
        tree = Tree.new node
    end

    def setup
        @tree = create_tree
    end

    def test_create
        expect = Node.new 3
        assert_equal expect, @tree.root
    end 

    def test_add_second_node_with_lesser_value
        @tree.add Node.new 1
        expect = Node.new 1
        assert_equal expect.to_s, @tree.root.left.to_s
    end

    def test_add_second_node_with_greater_value
        @tree.add Node.new 5
        expect = Node.new 5
        assert_equal expect.to_s, @tree.root.right.to_s
    end
end

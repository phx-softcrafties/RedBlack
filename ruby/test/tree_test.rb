require 'test/unit'
require 'app/tree'
require 'app/node'

class TestTree < Test::Unit::TestCase
    def create_tree
        root = Node.new 3
        @tree = Tree.new root
    end

    def create_tree_with_one_node
        root = Node.new 3
        root.left = Node.new 1
        @tree = Tree.new root
    end


    def test_create
        create_tree
        expect = Node.new 3
        assert_equal expect, @tree.root
    end 

    def test_add_second_node_with_lesser_value
        create_tree
        @tree.add Node.new 1
        expect = Node.new 1
        assert_equal expect.to_s, @tree.root.left.to_s
    end

    def test_add_second_node_with_greater_value
        create_tree
        @tree.add Node.new 5
        expect = Node.new 5
        assert_equal expect.to_s, @tree.root.right.to_s
    end
end

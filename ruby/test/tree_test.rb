require 'test/unit'
require 'app/tree'
require 'app/node'

class TestTree < Test::Unit::TestCase
    def create_tree
        node = Node.new 3
        tree = Tree.new node
    end

    def test_create
        tree = create_tree

        expect = Node.new 3
        assert_equal tree.root, expect
    end 

    def test_add_second_node
        tree = create_tree
        tree.add Node.new 5

        expect = Node.new 5
        assert_equal tree.root.right, expect
    end
end

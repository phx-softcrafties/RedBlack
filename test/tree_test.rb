require 'test/unit'
require 'app/tree'
require 'app/node'

class TestTree < Test::Unit::TestCase

    def test_create
        node = Node.new 3
        tree = Tree.new node

        expect = Node.new 3
        assert_equal tree.root, expect
    end 
end

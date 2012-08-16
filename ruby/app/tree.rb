class Tree
    attr_accessor :root

    def initialize(node)
        @root = node
    end

    def add(node)
        if node.data > root.data
            @root.left = node
        else
            @root.right = node
        end
    end
end

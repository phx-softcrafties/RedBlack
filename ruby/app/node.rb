class Node
   attr_accessor :data
   attr_accessor :color
   attr_accessor :right
   attr_accessor :left

   def initialize(value)
       @data = value
       @color = :BLACK
   end

   def ==(otherNode)
        eql? otherNode unless not otherNode.is_a? Node
   end
   
   def eql?(otherNode)
       (@data == otherNode.data) and (@color == otherNode.color)
   end

   def addChild(node)
       raise Exception, "wrong type dummy!" unless node.is_a? Node
       if (node.data > data)
           @right = node
       else
           @left = node
       end     
   end

   def to_s
       "node{data: #{@data}, color: #{@color}}"
   end

end


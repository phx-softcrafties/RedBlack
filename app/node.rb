class Node
   attr_accessor :data
   attr_accessor :color

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
end


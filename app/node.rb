class Node
   attr_accessor :data
   attr_accessor :color

   def initialize(value)
       @data = value
       @color = :BLACK
   end
end


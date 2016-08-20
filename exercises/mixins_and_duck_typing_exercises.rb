=begin
NOTES
Ruby emphasizes "methods you respond to" verses
"class you belong to"	

Module - it is a colletion of methods that aren't a class
- You can't instantiate it
- Some modules are namespaced 
- Use methods to mix methods into a class
- The enumarable module assumes the target object knows how to respond to each
- Sort requires that the elements be able to respond to <=>
- Comparable module assumes that target object reponds <=>(other_thing)

Namespaces
- Namespacing is a way of bundling logically related objects together
- Classes can be in a module and you access them using :: constant access operator
=end

module Perimeter
	# YOUR CODE HERE

	#def perimeter
	#	sides.inject(0) {|sum, side| sum+side}
	#end 
end

class Rectangle
	# YOUR CODE HERE

	#include Perimeter
	def initialize(length, width)
		@length = length
		@width = width
	end

	def sides
		[@length, @width, @length, @width]
	end
end


class Square 
	# YOUR CODE HERE

	#include Perimeter
	def initialize(length)
		@length = length
	end

	def sides
		[@length, @length, @length, @length]
	end
end

########
#TESTING NAMESPACES 
module RubyMonk
	module Parser
		class TextParser
			def self.parse(str)
				# YOU CODE HERE
				#str.upcase.split("")
			end
		end
	end 
end
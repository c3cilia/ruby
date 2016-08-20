=begin
NOTES ON METAPROGRAMMING
Reflection and introspection - lets us ask an object questions about itself and have it modify itself at runtime
Metaprogramming - lets us define new code at runtime
=end

######
#######
# AREA BEING TESTED: Class reopening
class Array
	def calc(method)
		self.inject(method.to_sym)
	end
end


#########
# AREA BEING TESTED: Method missing with just the default argument
class SuperHash
	def initialize(hash)
		@hash = hash
	end
	 
	def method_missing name 
		# YOUR CODE HERE
	end 
end

######
# AREA BEING TESTED: Method misssing with an extra array argument for that the missing method might take
class Convert
	def method_missing(name, *arg)
		# YOUR CODE HERE
	end
end 


#####
# AREA BEING TESTED: More on method missing
class MethodCall
	def initialize(sym, args)
		@sym = sym 
		@args = args
	end 

	attr_accessor :sym
	attr_accessor :args

	def ==(other_call)
		@sym == other_call.sym && @args == other_call.args
	end 
end  

class Spy
	def initialize
		@method_calls = []
	end 

	def method_missing(sym, *args)
		# YOUR CODE HERE
	end 

	def method_called?(sym, *args)
		# YOUR CODE HERE
	end 
end

#####
# AREA BEING TESTED: Class reopening with method missing
class Numeric
	@@currency = {"yen" => 0.97, "dolar" => 101.90, "euro" => 114.70}

	def method_missing(sym, *arg, &block)
		singular_sym = sym.to_s.gsub(/s$/, '')
		if @@currency.has_key?(singular_sym)
			# YOUR CODE HERE
		else 
			super # if method not found place search in super class
		end 
	end
end


#####
# AREA BEING TESTED: define_method
class Person
	["walked", "ran", "flew"].each do |action|
		# YOUR CODE HERE
	end 
end



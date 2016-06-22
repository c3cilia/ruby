
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

######
#######
# AREA BEING TESTED: Class reopening
class Array
	def calc(method)
		# YOUR CODE HERE
	end
end

#####
# AREA BEING TESTED 